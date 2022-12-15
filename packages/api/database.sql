create extension if not exists "uuid-ossp";
drop table IF EXISTS users cascade;
drop table IF EXISTS campaigns cascade;
drop table IF EXISTS campaign_items cascade;
drop table IF EXISTS donations cascade;

CREATE TABLE users (
	user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	username text NOT NULL,
	"password" text NOT NULL,
	email varchar(255) UNIQUE NOT NULL,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE campaigns (
	campaign_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	campaign_owner_id uuid NOT NULL,
	campaign_title text NOT NULL,
	campaign_desc text NOT NULL,
	campaign_type text NOT NULL,
	delivery_address text NOT NULL DEFAULT 'empty'::text,
  contact_number text NOT NULL,
	end_date date,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_user
      FOREIGN KEY(campaign_owner_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE
);

CREATE TABLE campaign_items (
  campaign_item_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  campaign_id uuid NOT NULL,
  campaign_item_name text NOT NULL,
  campaign_item_quantity smallint NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_campaign
      FOREIGN KEY(campaign_id)
        REFERENCES campaigns(campaign_id)
        ON DELETE CASCADE
);

CREATE TABLE donations (
  donation_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  campaign_item_id uuid NOT NULL,
  donations_pledged smallint NOT NULL DEFAULT 0,
  donations_received smallint NOT NULL DEFAULT 0,
  donator_name text NOT NULL,
  donator_surname text NOT NULL,
  donator_email varchar(255) NOT NULL,
  donator_contact_number text,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_campaign_items
      FOREIGN KEY(campaign_item_id)
        REFERENCES campaign_items(campaign_item_id)
        ON DELETE CASCADE
);

INSERT INTO users(username, "password", email)
VALUES ('brett', '$2b$10$NRkOkceGjOPwaywX18L5luqfxRP.UjorxAp4g7VVbLici.H78e.o6', 'brett@gmail.com');
INSERT INTO users(username, "password", email)
VALUES ('brett2', '$2b$10$NRkOkceGjOPwaywX18L5luqfxRP.UjorxAp4g7VVbLici.H78e.o6', 'brett2@gmail.com');

INSERT INTO
  campaigns(campaign_owner_id, campaign_title, campaign_desc, campaign_type, delivery_address, end_date, contact_number)
VALUES (
  (SELECT user_id FROM users where username = 'brett'),
  'Team Seas',
  'Helping the animals in the ocean.',
  'Animal Welfare',
  '50, 14th Street Kensington, Cape Town',
  CURRENT_TIMESTAMP + interval '1 year',
  '0681529191'
);
INSERT INTO
  campaigns(campaign_owner_id, campaign_title, campaign_desc, campaign_type, delivery_address, end_date, contact_number)
VALUES (
  (SELECT user_id FROM users where username = 'brett'),
  'Cape Town Fires',
  'Helping families who had their homes destroyed by the fires in Cape Town.',
  'Disaster Relief',
  '50, 14th Street Kensington, Cape Town',
  CURRENT_TIMESTAMP + interval '1 year',
  '0681529191'
);

INSERT INTO
  campaign_items(campaign_id, campaign_item_name, campaign_item_quantity)
VALUES (
  (select campaign_id from campaigns where campaign_title = 'Team Seas'),
  'Black Bags',
  50
);
INSERT INTO
  campaign_items(campaign_id, campaign_item_name, campaign_item_quantity)
VALUES (
  (select campaign_id from campaigns where campaign_title = 'Team Seas'),
  'Nets',
  90
);

INSERT INTO
  campaign_items(campaign_id, campaign_item_name, campaign_item_quantity)
VALUES (
  (select campaign_id from campaigns where campaign_title = 'Cape Town Fires'),
  'Blankets',
  100
);
INSERT INTO
  campaign_items(campaign_id, campaign_item_name, campaign_item_quantity)
VALUES (
  (select campaign_id from campaigns where campaign_title = 'Cape Town Fires'),
  'Pillows',
  150
);

INSERT INTO
  donations(campaign_item_id, donations_pledged, donations_received, donator_name, donator_surname, donator_email, donator_contact_number)
VALUES (
  (select campaign_item_id from campaign_items where campaign_item_name = 'Black Bags'),
  20,
  10,
  'Brett',
  'Scheepers',
  'brett@gmail.com',
  '0681529191'
);
INSERT INTO
  donations(campaign_item_id, donations_pledged, donations_received, donator_name, donator_surname, donator_email, donator_contact_number)
VALUES (
  (select campaign_item_id from campaign_items where campaign_item_name = 'Nets'),
  10,
  5,
  'Brett',
  'Scheepers',
  'brett@gmail.com',
  '0681529191'
);