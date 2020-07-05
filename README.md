# gclound-ingress-example

https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer


hmmm...for what i was trying to do, altoghether a different method is needed.

don't try to tweak without doing a functional google search..

When i try to use nginx ingress for API re-routing, it will not work because the API payload is not being passed to the actual service...nginx is only transferring the form params.

SUPER!!!

This is what i need. rinormalwauki is great.

https://www.orange-networks.com/blogs/210-ingress-controller-simplified-routing-in-kubernetes