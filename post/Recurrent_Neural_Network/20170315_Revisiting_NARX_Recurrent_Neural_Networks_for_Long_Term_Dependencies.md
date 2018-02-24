# [Revisiting NARX Recurrent Neural Networks for Long-Term Dependencies Robert]()

Modeling long-term Dependencies is hard, as it is often attributed to gradient vanishing problem.

> Gradient components relating a loss at time t to time $t-\tau$ tend to decay exponentially with $\tau$.

1. LSTM and GRU attempt to remedy this problem by making the decay's base closer to 1.
2. NARX RNNs make an orthogonal approach: by 
