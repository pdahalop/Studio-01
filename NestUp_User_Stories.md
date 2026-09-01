# NestUp – User Stories

The following user stories describe the main functional requirements of the NestUp real estate management system. Each story follows the standard format:

**As a [user/actor], I want to [action], so that [benefit].**

## US01 – Manage Property Listings

**As a real estate agent, I want to create, update, and remove property listings so that I can keep property information accurate and up to date.**

## US02 – Filter Property Listings

**As a real estate agent, I want to filter current property listings by suburb, price range, bedroom count, or listing status so that I can quickly find properties that meet specific requirements.**

## US03 – Register a Buyer

**As a real estate agent or administrator, I want to register a new buyer with their contact details, budget, and property preferences so that the system can identify suitable properties for them.**

## US04 – Match Buyers with Properties

**As a real estate agent, I want the system to automatically compare new or updated property listings with registered buyers' criteria so that I can quickly identify and contact potential buyers.**

## US05 – Book a Property Viewing

**As a real estate agent, I want to schedule a viewing and record the buyers attending so that property viewings can be organised and tracked effectively.**

## US06 – Record Viewing Feedback

**As a real estate agent, I want to record a buyer's feedback after a viewing so that I can maintain a history of their interest and use it for future follow-ups.**

## US07 – Record Offers and Counter-Offers

**As a real estate agent, I want to record buyer offers and link counter-offers to the original offer so that the complete negotiation history is maintained.**

## US08 – Manage Offer Status and Sales

**As a real estate agent, I want to update an offer's status as accepted, declined, or countered and automatically create a Sale record when an offer is accepted so that the sales process is accurately tracked.**

## US09 – Calculate Agent Commission

**As a branch manager, I want the system to calculate the commission owed to an agent after a sale settles so that commission information can be tracked accurately.**

## US10 – Find Comparable Sales

**As a real estate agent, I want to search previous sales by suburb and property type so that I can use comparable properties when determining an appropriate price for a new listing.**

## US11 – Generate Monthly Agent Reports

**As a branch manager, I want to generate monthly reports showing listings taken, viewings held, and sales completed by each agent so that I can monitor individual and overall agency performance.**

## Summary of Actors

| Actor | Main Responsibilities |
| --- | --- |
| **Real Estate Agent** | Manage listings, buyers, viewings, feedback, offers, sales, and comparable properties |
| **Reception/Admin Staff** | Enter and maintain buyer and vendor information |
| **Branch Manager** | Monitor performance, reports, and commission information |
| **Buyer** | Provides preferences and participates in property viewings/offers through an agent |
| **Vendor** | Provides property information through the agent |

The proposal specifies that buyers and vendors do not directly log into NestUp in the initial version; they interact with the system through agents.

## Overall System Flow

**Property Listing → Buyer Registration/Matching → Viewing → Feedback → Offer → Offer Decision → Sale → Commission → Reporting**

This overall flow is also reflected in the problem-domain diagram on page 5, where the system connects agents, properties, vendors, buyers, viewings, offers, and sales.
