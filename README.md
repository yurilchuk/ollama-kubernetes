# Configuração do Kubernetes para Ollama

Este repositório contém a configuração do Kubernetes para o Ollama.

## Pré-requisitos

- Você deve ter o [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) instalado.
- Você deve ter um cluster do Kubernetes configurado e o kubectl deve estar conectado a ele.

## Como usar

1. Baixe o arquivo de configuração do ConfigMap:

```bash
curl -O https://raw.githubusercontent.com/yurilchuk/ollama-kubernetes/main/ollama-config.yaml
```

2. Abra o arquivo ollama-config.yaml e substitua nfs-path, server-ip e storage pelos valores reais.

3. Aplique o arquivo de configuração do ConfigMap ao seu cluster:

```bash
kubectl apply -f ollama-config.yaml
```

4. Baixe o script de configuração:

```bash
curl -O https://raw.githubusercontent.com/yurilchuk/ollama-kubernetes/main/config.sh
```

5. Torne o script executável:

```bash
chmod +x configure.sh
```

6. Execute o script:

```bash
chmod +x config.sh
```

Este script irá baixar o arquivo ollama-kube.yaml do repositório, substituir as variáveis pelo valor do ConfigMap e aplicar o arquivo yaml ao seu cluster.

Contribuindo
Se você encontrar algum problema ou tiver alguma sugestão de melhoria, sinta-se à vontade para abrir uma issue ou enviar um pull request.