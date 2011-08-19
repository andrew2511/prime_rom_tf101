.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 770
    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 771
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 772
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 776
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 779
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 780
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 781
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 782
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 783
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 951
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x5

    .line 789
    if-ge p2, v6, :cond_2

    .line 790
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 792
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 793
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 792
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 795
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 796
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 797
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 798
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 799
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 947
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 802
    :cond_2
    if-ne p2, v6, :cond_3

    .line 805
    :try_start_0
    const-string v6, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 807
    const-string v6, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    const-string v6, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_2
    const/4 p2, 0x6

    .line 817
    :cond_3
    const/4 v6, 0x6

    if-ne p2, v6, :cond_4

    .line 819
    const-string v6, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 820
    const-string v6, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 821
    const/4 p2, 0x7

    .line 823
    :cond_4
    const/4 v6, 0x7

    if-ne p2, v6, :cond_5

    .line 826
    :try_start_1
    const-string v6, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 832
    :goto_3
    const/16 p2, 0x8

    .line 834
    :cond_5
    const/16 v6, 0x8

    if-ne p2, v6, :cond_6

    .line 837
    :try_start_2
    const-string v6, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 839
    const-string v6, "alter table Account add column signature text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 845
    :goto_4
    const/16 p2, 0x9

    .line 847
    :cond_6
    const/16 v6, 0x9

    if-ne p2, v6, :cond_7

    .line 850
    :try_start_3
    const-string v6, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 852
    const-string v6, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 854
    const-string v6, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 860
    :goto_5
    const/16 p2, 0xa

    .line 862
    :cond_7
    const/16 v6, 0xa

    if-ne p2, v6, :cond_8

    .line 865
    :try_start_4
    const-string v6, "alter table Attachment add column content text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 867
    const-string v6, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 873
    :goto_6
    const/16 p2, 0xb

    .line 875
    :cond_8
    const/16 v6, 0xb

    if-ne p2, v6, :cond_9

    .line 878
    :try_start_5
    const-string v6, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 884
    :goto_7
    const/16 p2, 0xc

    .line 886
    :cond_9
    const/16 v6, 0xc

    if-ne p2, v6, :cond_a

    .line 888
    :try_start_6
    const-string v6, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 891
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 896
    :goto_8
    const/16 p2, 0xd

    .line 898
    :cond_a
    const/16 v6, 0xd

    if-ne p2, v6, :cond_b

    .line 900
    :try_start_7
    const-string v6, "alter table Message add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 907
    :goto_9
    const/16 p2, 0xe

    .line 909
    :cond_b
    const/16 v6, 0xe

    if-ne p2, v6, :cond_c

    .line 911
    :try_start_8
    const-string v6, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    const-string v6, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 919
    :goto_a
    const/16 p2, 0xf

    .line 921
    :cond_c
    const/16 v6, 0xf

    if-ne p2, v6, :cond_d

    .line 923
    :try_start_9
    const-string v6, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 926
    const-string v6, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 935
    :goto_b
    const/16 p2, 0x10

    .line 937
    :cond_d
    const/16 v6, 0x10

    if-ne p2, v6, :cond_1

    .line 939
    :try_start_a
    const-string v6, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 945
    :goto_c
    const/16 p2, 0x11

    goto/16 :goto_1

    .line 811
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 813
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v7, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 828
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 830
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 841
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 843
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 856
    .end local v3           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 858
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 869
    .end local v3           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v6

    move-object v3, v6

    .line 871
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 880
    .end local v3           #e:Landroid/database/SQLException;
    :catch_5
    move-exception v6

    move-object v3, v6

    .line 882
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 892
    .end local v3           #e:Landroid/database/SQLException;
    :catch_6
    move-exception v6

    move-object v3, v6

    .line 894
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 903
    .end local v3           #e:Landroid/database/SQLException;
    :catch_7
    move-exception v6

    move-object v3, v6

    .line 905
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 915
    .end local v3           #e:Landroid/database/SQLException;
    :catch_8
    move-exception v6

    move-object v3, v6

    .line 917
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 931
    .end local v3           #e:Landroid/database/SQLException;
    :catch_9
    move-exception v6

    move-object v3, v6

    .line 933
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 941
    .end local v3           #e:Landroid/database/SQLException;
    :catch_a
    move-exception v6

    move-object v3, v6

    .line 943
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
