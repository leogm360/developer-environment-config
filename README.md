<p align="center" dir="auto">
    <img
        style="width:300px;height:auto;"
        src="https://leogm360.github.io/leogm360-images/development-config-logo.svg"
        alt="Logotipo do repositório"
    />
</p>

Respositório dedicado a guardar bash scripts que instalam softwares e configuram um ambiente de desenvolvedor em acordo com as necessidades de [leogm360](https://github.com/leogm360). O código aqui encontrado é de livre uso, modificação e distribuição em acordo com a licença [MIT](https://opensource.org/license/mit/).

# Configurações de Ambiente de Desenvolvedor - Ubuntu v22.04 LTS

O programa consiste em um simples script eescrito na linguagem shell bash que executa alguns procedimentos pré instalação e, logo em seguida, executa uma série de scripts de instalção auxiliares. Cada script é responsável por instalar uma funcionalidade específica do ambiente de desenvolvimento.

Feito com muito 🧠👨🏾‍💻❤️!

## Índice

[1. Iniciando](#1-iniciando)

---

## 1. Iniciando

O projeto é de fácil uso, basta seguir o passo a passo:

1 - Clone o respositário:

```shell
   git clone git@github.com:leogm360/developer-environment-config.git
```

2 - Navegue até o diretório do projeto e de permissão de execução ao script de instalação:

```shell
  cd ./developer-environment-config

  chmod a+x install.sh
```

3 - Execute o script de instalação e aguarde sua conclusão:

```shell
    ./developer_environment_config.sh
```

O tempo necessário para a completa execução do script, vai variar dependendo das capacidades do computador onde foi utilizado. No entanto, ele costuma demorar pelo menos 5 mins.

Ao terminar sua execução com sucesso, a mensagem '**✅ All done.**' será mostrada no terminal. Alternativamente, caso algum erro aconteça, o erro especifico será listado (exemplo: '**❌ Found an unknown error while executing.**') e o script será encerrado.

**Observação: o script pode ser interrompido a qualquer momento utilizando o atalho CTRL+C, porém no momento não há como fazer rollback das moficiações feitas. Interromper o script de forma prematura pode gerar resultados inesperados, como corrupção de arquivos.**

[**🔝 Ir para o início**](#índice)
