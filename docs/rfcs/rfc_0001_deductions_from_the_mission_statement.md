# Deductions from the mission statement

by: Crazy Techno Opossum

This document is a Request For Comments. It is open for criticism and review.
We expect review to improve the quality of this document.

This document extracts some deductions and technical constraints from the mission statement.
This document does not define a system that maps those constraints to a particular implementation.

This document's intended audience is people that want to help build the system.
Some cryptography and mathematical knowledge is expected.


## Summary


The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL
NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED",  "MAY", and
"OPTIONAL" in this document are to be interpreted as described in
[RFC 2119](https://www.rfc-editor.org/rfc/rfc2119).


## Key points from the mission statement

> Imagine a unique social project that takes a web server and turns it into a multiplayer hub for 
> a purposeful cause. The goal? To create a space where people come together, enjoy games or 
> activities, and contribute to a shared fund. 
> This fund isn’t just any fund – it’s a resource that automatically gets divided among the users of the server. 
> So, the more you engage and participate, the more you receive from the fund. 
> This innovative project not only brings people closer through fun and interaction but also 
> enables them to collectively impact their community by distributing funds where they’re needed most.

Technology wise, we extract the following points:
- A web server.
- Games and activities.
- People can contribute to a shared fund.
- The fund gets distributed among the users of the server.
- A user's income from the fund is a function of their engagement.
- Income is also distributed based on necessity.


## A study of flows

One key ambiguity in the mission statement is if value is expected to be internal or external to the server.
We will study the internal case and study the external case separately

### Internal flows of value

A key item of the mission statement is the existence of a shared fund.
This fund MAY receive value, and that value MUST flow to each user in the server eventually.

Value flow from the shared fund to each user MUST be calculated according to a function.
This function SHOULD take into account:
- how much a given user has engaged with the server.
- how much a given user needs value.
- global engagement and global need of value.

Users MUST have a private, in-server fund in which to store their value.

### External flows of value

If external value flows are desired, two more flows are possible:
- Inward flows of value to the server  (for example, donations).
- Outward flows of value from the server (for example, users withdrawing funds from their personal fund).

#### Inward Flows of value

The main inward flow of value is donations.

#### Outward Flows of value

Two main outward flows of value are considered:
- Users withdrawing their funds.
- The Shared Server Fund paying maintenance fees (such as electricity, hosting fees, etc.).

This is easily achievable by integrating with existing cryptocurrencies.

## Deep dive into fund sharing

This section explores alternatives to fund distribution.
Explored alternatives are:
- Direct Split.
- Fraction Sharing Split.
- Fraction Sharing Split with Weighted Engagement.

### Direct Split

The simplest of splits. Split the Server Fund contents equally among the users.

{equation}

### Fraction Sharing Split

At each time increment, only split a fraction of the Server Fund contents equally among the users.
This allows for a more gradual transfer of funds among users.

{equation}

In time, this metric resembles a negative exponential.

{equation and graphs}

### Fraction Sharing Split with Weighted Engagement

Same as Fraction Sharing Split, but using a weighted metric based on engagement.
Based on an engagement metric, the more engaged users will receive a greater share of the split in each transfer datetime.

{equation}
{equation and graphs}

