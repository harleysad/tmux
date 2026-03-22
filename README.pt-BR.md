# Configuração Moderna do tmux

[English](./README.md)

Uma configuração do `tmux` de alta performance e esteticamente agradável, projetada para monitoramento do sistema em tempo real e produtividade máxima.

## Principais Funcionalidades

- **Barra de Status Dinâmica:** Monitoramento em tempo real de:
  - **Uso de Memória:** Exibe RAM utilizada vs total.
  - **Utilização de CPU:** Porcentagem ao vivo calculada via `vmstat`.
  - **Monitoramento Térmico:** Temperatura do core (via `/sys/class/thermal`).
  - **Hora e Hostname:** Integrados de forma limpa na linha de status.
- **Visuais Customizados:**
  - Separadores modernos no estilo Powerline (``, ``).
  - Paleta de cores otimizada para legibilidade de alto contraste.
  - Layout customizado no lado direito (status-right) com fundos segmentados por cor.
- **Scripts Utilitários:**
  - `right.sh`: Um testador de paleta de 256 cores para verificar o suporte a cores do seu terminal.

## Estrutura do Projeto

- `tmux.conf`: O arquivo principal de configuração do `tmux`.
- `right.sh`: Script auxiliar para exibir as capacidades de cor do terminal.
- `gemini.md`: Protocolo de "Vibe Coding" do projeto e regras de log de sessão. (Apelidado como `agents.md` e `claude.md`).

## Instalação

### Pré-requisitos

- `tmux` (v3.0 ou superior recomendado)
- `bash` (para os scripts utilitários)
- Fontes compatíveis com Powerline (ex: [Nerd Fonts](https://www.nerdfonts.com/))
- Ferramentas padrão Linux: `awk`, `free`, `vmstat`, `cat`

### Configuração

1. Faça backup da sua configuração existente (opcional):
   ```bash
   mv ~/.tmux.conf ~/.tmux.conf.bak
   ```

2. Clone e vincule (link) a configuração:
   ```bash
   git clone https://github.com/harleysad/tmux.git ~/src/tmux
   ln -s ~/src/tmux/tmux.conf ~/.tmux.conf
   ```

3. Recarregue o `tmux`:
   - Se já estiver dentro do `tmux`: `prefix + :source-file ~/.tmux.conf`
   - Pelo terminal: `tmux source-file ~/.tmux.conf`

## Uso

### Teste de Cores
Para garantir que seu terminal suporta a paleta de 256 cores usada por este tema:
```bash
./right.sh
```

### Detalhes da Configuração
A barra de status é dividida em vários módulos:
- **Esquerda:** Hostname e nome da Sessão.
- **Direita:** Info de Memória $\rightarrow$ % de CPU $\rightarrow$ Temp $\rightarrow$ Hora $\rightarrow$ Nome da Máquina.

## Licença
MIT
