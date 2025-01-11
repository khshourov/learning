# Learning helm-chart from [Rahul Wagh](https://www.youtube.com/watch?v=DQk8HOVlumI)

# Chapter 1
## Installing helm-chart on MacOS
```
brew install helm
helm version
```

# Chapter 2
```
helm create helloworld
helm install <Release Name> <Chart name>
helm list -a
helm uninstall <Release Name>
```

# Chapter 3
```
helm upgrade <Release name> <Chart name>
helm rollback <Release name> <Revision number>
helm <command> <Release name> --debug --dry-run <Chart name>
helm template <Chart name>
helm lint <Chart name>
```
