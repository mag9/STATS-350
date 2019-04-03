#Task
n = 50

rdist = rbinom(n, 1, 0.2)

pobs = sum(rdist/n)

print(pobs)

#' I think this is a reasonably good enough estimate of the value
#' of p_0 because our value is so similar to the sample proportion
#' that was set from the beginning. It very obviously shows that
#' that the probability of success if the number of successes 
#' divided by the number of trials. 


#Task 2

#' Using Method A, I think that is a reasonable and simple method
#' for determining that 0.4 is incorrect simple because it is
#' so different from our calculated probability of success. 

#Method B
dist_b = array(dim = 1,10000)

for(i in 1:10000)
{
  method_dist = rbinom(n, 1, 0.4)
  dist_b[i] = sum(method_dist/n)
}

hist(dist_b)
rel_freq = 0

for(i in 1:10000)
{
  if(dist_b[i] <= pobs)
  {
    rel_freq = rel_freq + 1
  }
}

rel_prob = rel_freq / 10000

print(rel_prob)

#' After gaining a random sampling of 10000 sample proportions, we 
#' can see right away based on our graph that the average distripution
#' lies nowhere near our original observed probability of 0.2. We
#' can also see from our relative frequency percentage - the 
#' percentage that p<=p_obs, that it is consistently less than 0.1%
#' which is nowhere near a value that warrents us assuming that 0.4
#' is our probability of success.