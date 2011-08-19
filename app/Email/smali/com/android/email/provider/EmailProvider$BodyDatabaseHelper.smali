.class Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BodyDatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 747
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 748
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 752
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProviderBody database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 754
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 763
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 758
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 759
    return-void
.end method
