
#### Support Email Response

> Thank you for reaching out! Let me see how I can help.
> 
> First, visit our [troubleshooting guide](https://fly.io/docs/getting-started/troubleshooting/)
> to see if the solutions are relevant to your situation (specifically
>  unhealthy allocations). Let's start there while I investigate this issue.
> 
> Can you share the output of `fly logs`? That can indicate any
> issues/errors that may have cropped up.

---

#### Support Email Troubleshooting steps
 - Pick out relevant information: 
	 - Unhealthy allocations (1 health check)
	 - 	Past Deployments used to work (v83)
- Investigate the [usual troubleshooting](https://fly.io/docs/getting-started/troubleshooting/):
 Unhealthy allocations appear to be a common problem, which can be solved by increasing the grace period in `fly.toml`
 ```
  # If you are using tcp_checks
  [[services.tcp_checks]]
    grace_period = "30s"
    ...

  # If you are using http_checks
  [[services.http_checks]]
    grace_period = "30s"
    ...
```
- Google some relevant links (*deployments **were** working previously, unhealthy allocations*)
	- https://community.fly.io/t/unhealthy-allocations-is-killing-me/7397/3
	- https://community.fly.io/t/go-failed-due-to-unhealthy-allocations/9008   
	- https://community.fly.io/t/source-of-deployment-failing-due-to-unhealthy-allocations/4247/3
- Consider removing redundant services that are pinging health checks
- Additional info to possibly request:
	-  `flyctl logs`(important)
	- `fly status --all` and `fly vm status <id of failed vm>`
	- Ask how it runs locally 
	- `Dockerfile` and `fly.toml`(important)
 
**If issue is not resolved by user, request additional info**. **Work through troubleshooting guide solutions like increasing the `grace-period` (if it hasn't been attempted).**

- If this doesn't work, restart troubleshooting steps with the additional info handy (ie fly.toml/Dockerfile).
- Extra:
	-  Ask an engineer a question about how healthchecks work. 
	- Consider helping them rollback to a working release in the meantime (confirm if this is a good option). 
	

---

#### Community Forum Response

>  @mruser status.flyio.net is reporting no outages at the moment. Can
> you check run `fly status` to confirm that both regions are
> unresponsive?
> 
> The output of `fly logs` can also indicate issues/errors during the
> deployment. Could you include those logs so we can isolate where the
> deployment failed?
> 
> And be sure to check out our [troubleshooting guide](https://fly.io/docs/getting-started/troubleshooting/) for some
> of the more common errors. If its working locally, it may be covered
> there.


---

#### Rails App URL

Once you've deployed your Rails app, put the link here: `eavesdropping.fly.dev`. I added a Star Wars reference with some ASCII art. 

If I misinterpreted the prompt, please allow me to adjust it. LetterOpened seemed to be configured for production.

#### Personal Notes: 
I framed my responses based off the context of the prompts. Such as changing up my tone in the community forum response to encourage both the user and others in the community to include `fly logs` in their original question. Public knowledge responses should be worded with future readers in mind. Meanwhile, the email response sets an expectation of providing more direct assistance one-on-one (I'll investigate this issue). 

The email and forum responses are similar in how they just confirm the basics ("did you turn it on and off?"). It's difficult to go beyond that in the initial response. However, the support email is receiving additional help in parallel (googling/forums, trying it out myself, or asking people questions). 
