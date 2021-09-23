CREATE TABLE "public.Products" (
	"product_id" serial NOT NULL,
	"product_name" serial(255) NOT NULL,
	"price" serial(255) NOT NULL,
	CONSTRAINT "Products_pk" PRIMARY KEY ("product_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Cart" (
	"cart_id" serial NOT NULL,
	"user_id" serial(255) NOT NULL,
	"product_id" serial(255) NOT NULL,
	"quantity" serial(255) NOT NULL,
	CONSTRAINT "Cart_pk" PRIMARY KEY ("cart_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Users" (
	"user_id" serial NOT NULL,
	"name" serial(255) NOT NULL,
	"email" serial(255) NOT NULL,
	CONSTRAINT "Users_pk" PRIMARY KEY ("user_id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Cart" ADD CONSTRAINT "Cart_fk0" FOREIGN KEY ("user_id") REFERENCES "Users"("user_id");
ALTER TABLE "Cart" ADD CONSTRAINT "Cart_fk1" FOREIGN KEY ("product_id") REFERENCES "Products"("product_id");




