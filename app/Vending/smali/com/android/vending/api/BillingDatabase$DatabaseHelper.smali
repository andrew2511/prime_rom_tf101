.class Lcom/android/vending/api/BillingDatabase$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BillingDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/BillingDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 551
    const-string v0, "billing.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 552
    return-void
.end method

.method private createBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 560
    const-string v0, "CREATE TABLE billing(sim_identifier TEXT PRIMARY KEY, p_api_version TEXT, p_is_provisioned INTEGER, p_provisioning_id TEXT, p_account_type TEXT, p_tos_version TEXT, p_tos_url TEXT, p_subscriber_currency TEXT, p_transaction_limit INTEGER, p_subscriber_name TEXT, p_subscriber_identifier TEXT, p_address1 TEXT, p_address2 TEXT, p_city TEXT, p_state TEXT, p_postal_code TEXT, p_country TEXT, p_subscriber_info TEXT, p_credentials TEXT, p_credentials_expiration_time INTEGER, p_password_required INTEGER, p_password_prompt TEXT, p_password_forgot_url TEXT, p_carrier_name TEXT, p_carrier_id TEXT, p_carrier_icon_id TEXT, p_subscriber_info_message TEXT, p_subscriber_info_encrypted_key TEXT, p_subscriber_info_signature TEXT, p_subscriber_info_init_vector TEXT, p_subscriber_info_carrier_key_version INTEGER, p_subscriber_info_google_key_version INTEGER, p_address_snippet_col_name TEXT, p_address_country_col_name TEXT, last_retrieved_time INTEGER, earliest_next_check_time INTEGER, tos_needs_review INTEGER, address_needs_review INTEGER, carrier_billing_shown INTEGER, german_debit_shown INTEGER, server_update_time INTEGER, server_update_hash INTEGER, server_address1 TEXT, server_address2 TEXT, server_city TEXT, server_state TEXT, server_postal_code TEXT, server_country TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method private dropBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 612
    const-string v0, "DROP TABLE IF EXISTS billing"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 613
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;->createBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 557
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 617
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    .line 619
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 620
    :try_start_0
    const-string v1, "Adding columns to database to upgrade from version 1"

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 621
    const-string v1, "ALTER TABLE billing ADD COLUMN p_password_required INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    const-string v1, "ALTER TABLE billing ADD COLUMN p_password_prompt TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    const-string v1, "ALTER TABLE billing ADD COLUMN p_password_forgot_url TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    :cond_0
    const/4 v1, 0x2

    if-gt p2, v1, :cond_1

    .line 629
    const-string v1, "Adding columns to database to upgrade from version 2"

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 630
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    :cond_1
    const/4 v1, 0x3

    if-gt p2, v1, :cond_2

    .line 634
    const-string v1, "Adding columns to database to upgrade from version 3"

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 635
    const-string v1, "ALTER TABLE billing ADD COLUMN p_api_version TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info_message TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info_encrypted_key TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info_signature TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info_init_vector TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 645
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info_carrier_key_version INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    const-string v1, "ALTER TABLE billing ADD COLUMN p_subscriber_info_google_key_version INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    const-string v1, "ALTER TABLE billing ADD COLUMN p_address_snippet_col_name TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    const-string v1, "ALTER TABLE billing ADD COLUMN p_address_country_col_name TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_2
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 656
    .local v0, sqle:Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade requested old, new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Dropping and creating billing table from scratch due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;->dropBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;->createBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 664
    .end local v0           #sqle:Landroid/database/sqlite/SQLiteException;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade requested old, new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Dropping and creating billing table from scratch."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;->dropBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/android/vending/api/BillingDatabase$DatabaseHelper;->createBillingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
