.class Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StructuredNameLookupBuilder"
.end annotation


# instance fields
.field private final mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

.field private final mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .parameter
    .parameter "splitter"
    .parameter "commonNicknameCache"
    .parameter "nameLookupInsert"

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 2485
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 2486
    iput-object p3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 2487
    iput-object p4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 2488
    return-void
.end method


# virtual methods
.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "normalizedName"

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertNameLookup(JJILjava/lang/String;)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 2493
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->access$000(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    .line 2497
    :cond_0
    return-void
.end method
