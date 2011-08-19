.class public Lcom/google/android/talk/PublicIntentDispatcher;
.super Landroid/app/Activity;
.source "PublicIntentDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;,
        Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;,
        Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;
    }
.end annotation


# static fields
.field private static mLogLevel:I


# instance fields
.field private mAction:I

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mMessageBody:Ljava/lang/String;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mToAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/google/android/talk/PublicIntentDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/PublicIntentDispatcher$1;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;)V

    iput-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 712
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/PublicIntentDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->serviceStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/PublicIntentDispatcher;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/talk/PublicIntentDispatcher;->onAccountStateAvailable(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/PublicIntentDispatcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/PublicIntentDispatcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/PublicIntentDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/PublicIntentDispatcher;)Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/PublicIntentDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 49
    invoke-static/range {p0 .. p6}, Lcom/google/android/talk/PublicIntentDispatcher;->executeRequestedAction(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;JLjava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-static/range {p0 .. p5}, Lcom/google/android/talk/PublicIntentDispatcher;->startCall(Landroid/content/Context;JLjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-static/range {p0 .. p5}, Lcom/google/android/talk/PublicIntentDispatcher;->openChat(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/PublicIntentDispatcher;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/PublicIntentDispatcher;->makeConfirmationDialog(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static chooseFromAccount(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    .locals 7
    .parameter
    .parameter "specifiedFromUser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;"
        }
    .end annotation

    .prologue
    .local p0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    const/4 v6, 0x0

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v4, matchingSignedInAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, matchingAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    const/4 v3, 0x0

    .line 238
    .local v3, matchingActiveSignedInAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 240
    const/4 v5, 0x0

    .line 273
    .end local p0           #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    :goto_0
    return-object v5

    .line 243
    .restart local p0       #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    .line 244
    .local v0, as:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    iget-object v5, v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 247
    goto :goto_0

    .line 248
    :cond_2
    iget-boolean v5, v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->mHasTargetUser:Z

    if-eqz v5, :cond_1

    .line 249
    iget-boolean v5, v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->signedIn:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->active:Z

    if-eqz v5, :cond_4

    .line 250
    move-object v3, v0

    .line 254
    :cond_3
    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_4
    iget-boolean v5, v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->signedIn:Z

    if-eqz v5, :cond_3

    .line 252
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    .end local v0           #as:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    :cond_5
    if-eqz v3, :cond_6

    move-object v5, v3

    .line 261
    goto :goto_0

    .line 262
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 265
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    check-cast p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    move-object v5, p0

    goto :goto_0

    .line 266
    .restart local p0       #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 269
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    check-cast p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    move-object v5, p0

    goto :goto_0

    .line 273
    .restart local p0       #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    :cond_8
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    check-cast p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    move-object v5, p0

    goto :goto_0
.end method

.method public static executeRequestedAction(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V
    .locals 7
    .parameter "c"
    .parameter "action"
    .parameter "toAddress"
    .parameter "fromAccountId"
    .parameter "messageBody"

    .prologue
    .line 325
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/PublicIntentDispatcher;->executeRequestedAction(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Z)V

    .line 327
    return-void
.end method

.method private static executeRequestedAction(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 20
    .parameter "c"
    .parameter "action"
    .parameter "toAddress"
    .parameter "fromAccountId"
    .parameter "messageBody"
    .parameter "needLogin"

    .prologue
    .line 332
    const/16 v19, 0x1

    .line 334
    .local v19, video:Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    move/from16 v9, v19

    .line 373
    .end local v19           #video:Z
    .local v9, video:Z
    :goto_1
    return-void

    .line 336
    .end local v9           #video:Z
    .restart local v19       #video:Z
    :pswitch_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p2

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/PublicIntentDispatcher;->inviteFriend(Landroid/content/Context;JLjava/lang/String;Z)V

    move/from16 v9, v19

    .line 337
    .end local v19           #video:Z
    .restart local v9       #video:Z
    goto :goto_1

    .line 339
    .end local v9           #video:Z
    .restart local v19       #video:Z
    :pswitch_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/PublicIntentDispatcher;->showFriendList(Landroid/content/Context;JZ)V

    move/from16 v9, v19

    .line 340
    .end local v19           #video:Z
    .restart local v9       #video:Z
    goto :goto_1

    .end local v9           #video:Z
    .restart local v19       #video:Z
    :pswitch_2
    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 342
    invoke-static/range {v5 .. v10}, Lcom/google/android/talk/PublicIntentDispatcher;->openChat(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v9, v19

    .line 343
    .end local v19           #video:Z
    .restart local v9       #video:Z
    goto :goto_1

    .line 345
    .end local v9           #video:Z
    .restart local v19       #video:Z
    :pswitch_3
    const/4 v9, 0x0

    .end local v19           #video:Z
    .restart local v9       #video:Z
    :goto_2
    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    move/from16 v10, p6

    .line 347
    invoke-static/range {v5 .. v10}, Lcom/google/android/talk/PublicIntentDispatcher;->startCall(Landroid/content/Context;JLjava/lang/String;ZZ)V

    goto :goto_1

    .line 354
    .end local v9           #video:Z
    .restart local v19       #video:Z
    :pswitch_4
    new-instance v10, Lcom/google/android/talk/ContactInfoQuery;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p3

    move-object/from16 v14, p2

    invoke-direct/range {v10 .. v16}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 356
    .local v10, query:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v11, Lcom/google/android/talk/PublicIntentDispatcher$4;

    move-object v12, v10

    move-object/from16 v13, p0

    move-wide/from16 v14, p3

    move-object/from16 v16, p2

    move/from16 v17, p6

    move-object/from16 v18, p5

    invoke-direct/range {v11 .. v18}, Lcom/google/android/talk/PublicIntentDispatcher$4;-><init>(Lcom/google/android/talk/ContactInfoQuery;Landroid/content/Context;JLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 368
    invoke-virtual {v10}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    goto :goto_0

    .end local v10           #query:Lcom/google/android/talk/ContactInfoQuery;
    :pswitch_5
    move/from16 v9, v19

    .end local v19           #video:Z
    .restart local v9       #video:Z
    goto :goto_2

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeRequestedActionWithConfirm(Z)V
    .locals 6
    .parameter "needLogin"

    .prologue
    .line 307
    iget v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    invoke-static {v0}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->needsConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    iget-object v2, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    iget-wide v3, v0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->accountId:J

    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mMessageBody:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/PublicIntentDispatcher;->executeRequestedAction(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V

    .line 320
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/google/android/talk/PublicIntentDispatcher$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/PublicIntentDispatcher$3;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/PublicIntentDispatcher;->getConfirmation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static findMatchingProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "provider"

    .prologue
    .line 618
    const-string v0, "GTalk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GTalk"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConfirmation(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "confirmedCall"

    .prologue
    .line 377
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    iget-wide v2, v1, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->accountId:J

    iget-object v4, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 380
    .local v0, query:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/PublicIntentDispatcher$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/talk/PublicIntentDispatcher$5;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;Lcom/google/android/talk/ContactInfoQuery;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 417
    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 418
    return-void
.end method

.method private static getProviderNameForCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "providerCategory"

    .prologue
    .line 608
    if-eqz p0, :cond_0

    .line 609
    const-string v0, "com.android.im.category.GTALK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "GTalk"

    .line 614
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inviteFriend(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 669
    if-eqz p4, :cond_0

    .line 670
    const/4 v0, 0x4

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/talk/PublicIntentDispatcher;->startLogin(Landroid/content/Context;IJLjava/lang/String;)V

    .line 678
    :goto_0
    return-void

    .line 672
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 673
    const-class v1, Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 674
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 675
    const-string v1, "contact"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isCallAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 624
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 636
    :goto_0
    return v0

    .line 628
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 629
    goto :goto_0

    .line 632
    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 633
    goto :goto_0

    .line 636
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 730
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PublicIntentDispatcherActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void
.end method

.method private makeConfirmationDialog(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 8
    .parameter "action"
    .parameter "fromAvatarBitmap"
    .parameter "toAvatarBitmap"
    .parameter "confirmRunnable"

    .prologue
    .line 422
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    invoke-direct {v1, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 424
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 437
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 439
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04001c

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 440
    .local v5, view:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 442
    const v6, 0x7f10005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 443
    .local v4, toAvatarView:Landroid/widget/ImageView;
    if-eqz p3, :cond_0

    .line 444
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    :cond_0
    const v6, 0x7f100059

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 448
    .local v2, fromAvatarView:Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 449
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    :cond_1
    const v6, 0x7f10005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    iget-object v7, v7, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const v6, 0x7f10005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    const v6, 0x7f0c012d

    new-instance v7, Lcom/google/android/talk/PublicIntentDispatcher$6;

    invoke-direct {v7, p0, p4}, Lcom/google/android/talk/PublicIntentDispatcher$6;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    const v6, 0x7f0c012e

    new-instance v7, Lcom/google/android/talk/PublicIntentDispatcher$7;

    invoke-direct {v7, p0}, Lcom/google/android/talk/PublicIntentDispatcher$7;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 469
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 470
    iget-object v6, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 473
    .local v0, ad:Landroid/app/AlertDialog;
    return-object v0

    .line 426
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v2           #fromAvatarView:Landroid/widget/ImageView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #toAvatarView:Landroid/widget/ImageView;
    .end local v5           #view:Landroid/view/View;
    :pswitch_0
    const v6, 0x7f0c012b

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 429
    :pswitch_1
    const v6, 0x7f0c012c

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onAccountStateAvailable(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    iget-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->username:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/talk/PublicIntentDispatcher;->chooseFromAccount(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    move-result-object v0

    .line 188
    .local v0, fromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    if-eqz v0, :cond_1

    .line 189
    iput-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    .line 190
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mApp:Lcom/google/android/talk/TalkApp;

    .line 191
    iget-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/talk/PublicIntentDispatcher$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/PublicIntentDispatcher$2;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 200
    :goto_1
    return-void

    .line 185
    .end local v0           #fromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    .restart local v0       #fromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
    :cond_1
    const-string v1, "Couldn\'t find a valid gtalk account to send from"

    invoke-static {v1}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->finish()V

    goto :goto_1
.end method

.method private static openChat(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "c"
    .parameter "accountId"
    .parameter "toAddress"
    .parameter "messageBody"
    .parameter "needLogin"

    .prologue
    .line 657
    sget v0, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImUrlReceiver: openChat with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 660
    :cond_0
    if-eqz p5, :cond_1

    .line 661
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/talk/PublicIntentDispatcher;->startLogin(Landroid/content/Context;IJLjava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/talk/ChatScreen;->startChatScreenActivity(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)Z
    .locals 14
    .parameter "intent"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 113
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, host:Ljava/lang/String;
    sget v11, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseIntent: host="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "xmpp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 120
    .local v5, intentUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->parse(Landroid/net/Uri;)Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;

    move-result-object v10

    .line 122
    .local v10, xmppUri:Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;
    invoke-virtual {v10}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->getAction()I

    move-result v11

    iput v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    .line 123
    invoke-virtual {v10}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->getToAddress()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    .line 124
    new-instance v11, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    invoke-direct {v11}, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;-><init>()V

    iput-object v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    .line 125
    iget-object v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    invoke-virtual {v10}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->getFromAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->username:Ljava/lang/String;

    .line 126
    iget v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    if-nez v11, :cond_1

    .line 127
    invoke-virtual {v10}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mMessageBody:Ljava/lang/String;

    .line 173
    .end local v5           #intentUri:Landroid/net/Uri;
    .end local v10           #xmppUri:Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;
    :cond_1
    :goto_0
    sget v11, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    .line 174
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseIntent: to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 177
    :cond_2
    const/4 v11, 0x1

    :goto_1
    return v11

    .line 131
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, rawToAddress:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/talk/PublicIntentDispatcher;->isValidAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v9

    :goto_2
    iput-object v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    .line 136
    const/4 v11, 0x0

    iput v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 139
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 141
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 142
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, category:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/PublicIntentDispatcher;->getProviderNameForCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/talk/PublicIntentDispatcher;->findMatchingProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, providerName:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 145
    const-string v11, "talk"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseIntent: IM provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v11, 0x0

    goto :goto_1

    .line 135
    .end local v0           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #category:Ljava/lang/String;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8           #providerName:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 152
    .end local v9           #rawToAddress:Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lcom/google/android/talk/PublicIntentDispatcher;->findMatchingProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .restart local v8       #providerName:Ljava/lang/String;
    if-nez v8, :cond_6

    .line 155
    const-string v11, "talk"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseIntent: IM provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 159
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, path:Ljava/lang/String;
    sget v11, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseIntent: path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 163
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 165
    const/16 v11, 0x2f

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    .line 166
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 167
    .restart local v9       #rawToAddress:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/talk/PublicIntentDispatcher;->isValidAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v11, v9

    :goto_3
    iput-object v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    .line 168
    const/4 v11, 0x0

    iput v11, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    goto/16 :goto_0

    .line 167
    :cond_8
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private requestAccountInfo()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;

    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;-><init>(Lcom/google/android/talk/PublicIntentDispatcher;Landroid/content/ContentResolver;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    return-void
.end method

.method private serviceStateChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 279
    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v3

    .line 280
    .local v3, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v3, :cond_5

    .line 282
    const/4 v1, 0x1

    .line 284
    .local v1, needLogin:Z
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    iget-wide v5, v5, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->accountId:J

    invoke-interface {v3, v5, v6}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v4

    .line 285
    .local v4, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v4, :cond_0

    .line 286
    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    .line 287
    .local v2, presence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v7

    .line 290
    .end local v2           #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mToAddress:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 291
    const/4 v5, 0x5

    iput v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    .line 295
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/talk/PublicIntentDispatcher;->executeRequestedActionWithConfirm(Z)V

    .line 304
    .end local v1           #needLogin:Z
    .end local v4           #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_2
    :goto_2
    return-void

    .line 287
    .restart local v1       #needLogin:Z
    .restart local v2       #presence:Lcom/google/android/gtalkservice/Presence;
    .restart local v4       #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_3
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 292
    .end local v2           #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_4
    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mFromAccount:Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    iget-boolean v5, v5, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->mHasTargetUser:Z

    if-nez v5, :cond_1

    .line 293
    const/4 v5, 0x4

    iput v5, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    .end local v4           #session:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 297
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "talk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PublicIntentDispatcherActivity] onServiceConnected: caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->finish()V

    goto :goto_2

    .line 302
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #needLogin:Z
    :cond_5
    sget v5, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    if-lt v5, v7, :cond_2

    const-string v5, "service disconnected, wait..."

    invoke-static {v5}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static showFriendList(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "c"
    .parameter "accountId"
    .parameter "needLogin"

    .prologue
    .line 682
    sget v1, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v1, "ImUrlReceiver: show friendlist screen"

    invoke-static {v1}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 684
    :cond_0
    if-eqz p3, :cond_1

    .line 685
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, p2, v2}, Lcom/google/android/talk/PublicIntentDispatcher;->startLogin(Landroid/content/Context;IJLjava/lang/String;)V

    .line 693
    :goto_0
    return-void

    .line 687
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 689
    const-string v1, "com.android.im.category.GTALK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 691
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startCall(Landroid/content/Context;JLjava/lang/String;ZZ)V
    .locals 1
    .parameter "c"
    .parameter "accountId"
    .parameter "toAddress"
    .parameter "video"
    .parameter "needLogin"

    .prologue
    .line 642
    if-eqz p5, :cond_1

    .line 643
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/talk/PublicIntentDispatcher;->startLogin(Landroid/content/Context;IJLjava/lang/String;)V

    .line 653
    :goto_1
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 646
    :cond_1
    if-eqz p4, :cond_2

    .line 647
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;Z)V

    goto :goto_1

    .line 650
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/talk/ChatScreen;->startVoiceChat(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private static startLogin(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 696
    sget-object v0, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 697
    sget v1, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show Signin screen for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/PublicIntentDispatcher;->log(Ljava/lang/String;)V

    .line 699
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "im:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 700
    const-class v2, Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 701
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 702
    const-string v0, "Send2_U"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    const-string v0, "Send2_A"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 706
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedStates"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v2

    sput v2, Lcom/google/android/talk/PublicIntentDispatcher;->mLogLevel:I

    .line 73
    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-direct {p0, v1}, Lcom/google/android/talk/PublicIntentDispatcher;->parseIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->finish()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->isCallAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mAction:I

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {p0, v2, v3}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->requestAccountInfo()V

    goto :goto_0

    .line 83
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/talk/PublicIntentDispatcher;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mApp:Lcom/google/android/talk/TalkApp;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    .line 103
    :cond_0
    return-void
.end method
