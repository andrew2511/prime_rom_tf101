.class public Lcom/google/android/gm/HtmlConversationActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "HtmlConversationActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/gm/CommandListener;
.implements Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;
.implements Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;
.implements Lcom/google/android/gm/MenuHandler$ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/HtmlConversationActivity$5;,
        Lcom/google/android/gm/HtmlConversationActivity$Copy;,
        Lcom/google/android/gm/HtmlConversationActivity$NextOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/GmailBaseActivity;",
        "Lcom/google/android/gm/MenuHandler$ActivityCallback;",
        "Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;",
        "Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Lcom/google/android/gm/CommandListener;"
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mApplyRemoveLabelDialog:Lcom/google/android/gm/ApplyRemoveLabelDialog;

.field private mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

.field private mConversationId:Ljava/lang/Long;

.field private mConversationListContext:Lcom/google/android/gm/ConversationListContext;

.field private mConversationMenu:Lcom/google/android/gm/ConversationMenu;

.field private mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

.field private mExecute:I

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private final mHandler:Landroid/os/Handler;

.field private mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMaxMessageId:J

.field private mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mTitleView:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLoaded:Z

    .line 134
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/HtmlConversationActivity$1;-><init>(Lcom/google/android/gm/HtmlConversationActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mHandler:Landroid/os/Handler;

    .line 174
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mExecute:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mTitleView:Landroid/widget/TextView;

    .line 672
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/HtmlConversationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mExecute:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/HtmlConversationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/HtmlConversationActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/HtmlConversationActivity;->onContextItemSelectedInternal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/HtmlConversationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/HtmlConversationActivity;)Lcom/google/android/gm/HtmlConversationFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/HtmlConversationActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationActivity;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 707
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 709
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 710
    return-void
.end method

.method private createConversationInfo()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/google/android/gm/ConversationInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMaxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initContentWithFields(JLjava/util/Map;)V
    .locals 1
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iput-wide p1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMaxMessageId:J

    .line 924
    invoke-static {p0, p3}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getDisplayableLabels(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    .line 926
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 931
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLoaded:Z

    .line 932
    return-void
.end method

.method private moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V
    .locals 4
    .parameter "goToNewer"
    .parameter "nextOperation"

    .prologue
    .line 846
    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationActivity;->performAction(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    .line 848
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->finish()V

    .line 872
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 854
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->hasNewer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->newer()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 860
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 861
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    .line 862
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gm/HtmlConversationActivity;->initContentWithFields(JLjava/util/Map;)V

    .line 864
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/ConversationMenu;->update(Lcom/google/android/gm/ConversationInfo;)V

    .line 865
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/HtmlConversationFragment;->showConversation(Lcom/google/android/gm/ConversationInfo;Ljava/util/List;)V

    goto :goto_0

    .line 856
    :cond_2
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->hasOlder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->older()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_1

    .line 868
    :cond_3
    const-string v1, "Gmail"

    const-string v2, "Unknown position in list. Unable to move to adjacent conversation"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->finish()V

    goto :goto_0
.end method

.method private onContextItemSelectedInternal(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "url"

    .prologue
    .line 647
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mTitleView:Landroid/widget/TextView;

    .line 648
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mExecute:I

    .line 649
    packed-switch p1, :pswitch_data_0

    .line 669
    :goto_0
    return-void

    .line 651
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 653
    .local v0, i:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    goto :goto_0

    .line 659
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationActivity;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 662
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationActivity;->shareLink(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x7f0e00be
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performAction(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V
    .locals 4
    .parameter "conversationOperation"

    .prologue
    const/4 v3, 0x0

    .line 876
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$5;->$SwitchMap$com$google$android$gm$HtmlConversationActivity$NextOperation:[I

    invoke-virtual {p1}, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 902
    :goto_0
    return-void

    .line 878
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isInboxView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gm/MenuHandler;->archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gm/MenuHandler;->performYButtonAction(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 891
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;)V

    goto :goto_0

    .line 894
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/MenuHandler;->mute(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    goto :goto_0

    .line 897
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/MenuHandler;->reportSpam(Ljava/util/Collection;ZLcom/google/android/gm/CommandListener;)Z

    goto :goto_0

    .line 876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private performActionAndMaybeAdvance(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V
    .locals 3
    .parameter "conversationOperation"

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 913
    .local v1, persistence:Lcom/google/android/gm/Persistence;
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceModeOlder(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationPositionTracker;->hasOlder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    .line 920
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceModeNewer(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationPositionTracker;->hasNewer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 916
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 918
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationActivity;->performAction(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0
.end method

.method private shareLink(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const v1, 0x7f0d0138

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showShareLinkMenuItem()Z
    .locals 4

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 687
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v2, send:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 690
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doneChangingLabels(Lcom/google/android/gm/LabelOperations;)V
    .locals 0
    .parameter "labelOperations"

    .prologue
    .line 567
    return-void
.end method

.method public enterSearchMode()V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public getApplyRemoveLabelDialog()Lcom/google/android/gm/ApplyRemoveLabelDialog;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mApplyRemoveLabelDialog:Lcom/google/android/gm/ApplyRemoveLabelDialog;

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    const-string v0, "gm_conv"

    return-object v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    return-object v0
.end method

.method public goToNewerConversation()V
    .locals 2

    .prologue
    .line 839
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    .line 840
    return-void
.end method

.method public goToOlderConversation()V
    .locals 2

    .prologue
    .line 835
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    .line 836
    return-void
.end method

.method public initializeFragment(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 11
    .parameter "fragment"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    .line 252
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 256
    .local v8, extras:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/google/android/gm/HtmlConversationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v10, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMaxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/HtmlConversationFragment;->bindActivityInfo(Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/MenuHandler;)V

    .line 260
    const-string v0, "maxMessageId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "is-read"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getDisplayableLabels(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gm/HtmlConversationActivity;->initContentWithFields(JLjava/util/Map;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 266
    new-instance v1, Lcom/google/android/gm/ConversationMenu;

    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {v1, p0, v0, v2, p0}, Lcom/google/android/gm/ConversationMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    .line 268
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMaxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v6, v7, v0, v1}, Lcom/google/android/gm/ConversationMenu;->bindInfo(Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/ConversationPositionTracker;)V

    .line 272
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMaxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->showConversation(Lcom/google/android/gm/ConversationInfo;Ljava/util/List;)V

    .line 275
    return-void
.end method

.method public onCommandAccepted(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 966
    sparse-switch p1, :sswitch_data_0

    .line 984
    :goto_0
    return-void

    .line 971
    :sswitch_0
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->performActionAndMaybeAdvance(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 974
    :sswitch_1
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 977
    :sswitch_2
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 980
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->onMarkUnread()V

    .line 981
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->NOTHING:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->performActionAndMaybeAdvance(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 966
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_0
        0x7f0e0044 -> :sswitch_2
        0x7f0e0045 -> :sswitch_1
        0x7f0e005d -> :sswitch_3
        0x7f0e00a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter "id"
    .parameter "op"

    .prologue
    .line 989
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 941
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 942
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:gm.setLandscape("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gm/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 622
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 623
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 641
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 630
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 635
    :cond_0
    iput v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mExecute:I

    .line 639
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 637
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->onContextItemSelectedInternal(ILjava/lang/String;)V

    goto :goto_1

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00be
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConversationKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/HtmlConversationActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 287
    return-void
.end method

.method public onConversationLoadError()V
    .locals 4

    .prologue
    .line 359
    new-instance v0, Lcom/google/android/gm/HtmlConversationActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gm/HtmlConversationActivity$3;-><init>(Lcom/google/android/gm/HtmlConversationActivity;)V

    .line 365
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/google/android/gm/HtmlConversationActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HtmlConversationActivity$4;-><init>(Lcom/google/android/gm/HtmlConversationActivity;)V

    .line 371
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00f9

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 376
    return-void
.end method

.method public onConversationLoaded()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 384
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 186
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0, v6}, Lcom/google/android/gm/HtmlConversationActivity;->requestWindowFeature(I)Z

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 192
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "list-context"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    .line 194
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    .line 196
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/google/android/gm/Utils;->isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->finish()V

    .line 245
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v3, "thread-id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 207
    invoke-static {p0}, Lcom/google/android/gm/MenuHandler;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 210
    const v3, 0x7f04001c

    invoke-virtual {p0, v3}, Lcom/google/android/gm/HtmlConversationActivity;->setContentView(I)V

    .line 220
    const-string v3, "position"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, convPosition:I
    new-instance v3, Lcom/google/android/gm/ConversationPositionTracker;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/gm/ConversationPositionTracker;-><init>(JI)V

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    .line 226
    new-instance v2, Lcom/google/android/gm/HtmlConversationActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/gm/HtmlConversationActivity$2;-><init>(Lcom/google/android/gm/HtmlConversationActivity;)V

    .line 243
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 244
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v11

    if-eq v0, v1, :cond_1

    .line 824
    .end local p2
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 721
    .restart local p2
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Landroid/webkit/WebView;

    move-object v10, v0

    .line 722
    .local v10, webview:Landroid/webkit/WebView;
    invoke-virtual {v10}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v8

    .line 723
    .local v8, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v8, :cond_0

    .line 727
    invoke-virtual {v8}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v9

    .line 728
    .local v9, type:I
    sparse-switch v9, :sswitch_data_0

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 742
    .local v7, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f110005

    move-object v0, v7

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 745
    invoke-virtual {v8}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 746
    .local v4, extra:Ljava/lang/String;
    const v11, 0x7f0e00b2

    const/4 v12, 0x2

    if-ne v9, v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 748
    const v11, 0x7f0e00b7

    const/4 v12, 0x4

    if-ne v9, v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 750
    const v11, 0x7f0e00ba

    const/4 v12, 0x3

    if-ne v9, v12, :cond_5

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 752
    const v11, 0x7f0e00bd

    const/4 v12, 0x7

    if-eq v9, v12, :cond_2

    const/16 v12, 0x8

    if-ne v9, v12, :cond_6

    :cond_2
    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 757
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 759
    :pswitch_1
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 761
    const v11, 0x7f0e00b3

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 766
    const v11, 0x7f0e00b4

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SENDTO"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "smsto:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 771
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v3, addIntent:Landroid/content/Intent;
    const-string v11, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v11, "phone"

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const v11, 0x7f0e00b5

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 777
    const v11, 0x7f0e00b6

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/google/android/gm/HtmlConversationActivity$Copy;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationActivity$Copy;-><init>(Lcom/google/android/gm/HtmlConversationActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 746
    .end local v3           #addIntent:Landroid/content/Intent;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 748
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 750
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 752
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 782
    :pswitch_2
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 783
    const v11, 0x7f0e00b8

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mailto:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 786
    const v11, 0x7f0e00b9

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/google/android/gm/HtmlConversationActivity$Copy;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationActivity$Copy;-><init>(Lcom/google/android/gm/HtmlConversationActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 791
    :pswitch_3
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 792
    const-string v5, ""

    .line 794
    .local v5, geoExtra:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 799
    :goto_5
    const v11, 0x7f0e00bb

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "geo:0,0?q="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 802
    const v11, 0x7f0e00bc

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    new-instance v12, Lcom/google/android/gm/HtmlConversationActivity$Copy;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationActivity$Copy;-><init>(Lcom/google/android/gm/HtmlConversationActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 808
    .end local v5           #geoExtra:Ljava/lang/String;
    :pswitch_4
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x109000e

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationActivity;->mTitleView:Landroid/widget/TextView;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationActivity;->mTitleView:Landroid/widget/TextView;

    move-object v11, v0

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 813
    const v11, 0x7f0e00c0

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationActivity;->showShareLinkMenuItem()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationActivity;->mHandler:Landroid/os/Handler;

    move-object v11, v0

    const/4 v12, 0x1

    const/high16 v13, -0x8000

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 819
    .local v6, headerMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    move-object v11, v0

    invoke-virtual {v11, v6}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 796
    .end local v6           #headerMessage:Landroid/os/Message;
    .restart local v5       #geoExtra:Ljava/lang/String;
    .restart local p2
    :catch_0
    move-exception v11

    goto/16 :goto_5

    .line 728
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 757
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 440
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 441
    new-instance v0, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gm/ApplyRemoveLabelDialog;-><init>(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V

    .line 443
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/GmailBaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getGmailQuery()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->NO:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 458
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 459
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onEndBulkOperation()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 291
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onKeyDown() keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v7, 0x1

    .line 295
    .local v7, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v7

    .line 348
    if-nez v7, :cond_0

    .line 349
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/GmailBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 354
    :cond_0
    :goto_0
    return v7

    .line 298
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->reply()V

    goto :goto_0

    .line 303
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->replyAll()V

    goto :goto_0

    .line 308
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->forward()V

    goto :goto_0

    .line 313
    :sswitch_3
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->ARCHIVE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 319
    :sswitch_4
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->ARCHIVE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v3, v0}, Lcom/google/android/gm/HtmlConversationActivity;->moveConversation(ZLcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    goto :goto_0

    .line 325
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->goToNewerConversation()V

    goto :goto_0

    .line 330
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->goToOlderConversation()V

    goto :goto_0

    .line 336
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    const-string v1, "^i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gm/provider/Label;

    .line 337
    .local v8, inbox:Lcom/google/android/gm/provider/Label;
    if-eqz v8, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gm/MenuHandler;->archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 339
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v8, v0, v1, v3}, Lcom/google/android/gm/HtmlConversationActivity;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    goto :goto_0

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x10 -> :sswitch_4
        0x1d -> :sswitch_1
        0x21 -> :sswitch_7
        0x22 -> :sswitch_2
        0x26 -> :sswitch_6
        0x27 -> :sswitch_5
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 5
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 533
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/gm/HtmlConversationFragment;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 540
    const-string v3, "^u"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4, v3}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/provider/Label;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v3, 0x1

    move v0, v3

    .line 547
    .local v0, finish:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 548
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "conversation-removed"

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 550
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v3}, Lcom/google/android/gm/MenuHandler;->hasUndoableOperation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 553
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v2, undoExtras:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v3}, Lcom/google/android/gm/MenuHandler;->getUndoOperation()Lcom/google/android/gm/UndoOperation;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gm/UndoOperation;->saveToExtras(Landroid/os/Bundle;)V

    .line 555
    const-string v3, "undo-extras-from-conv"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 558
    .end local v2           #undoExtras:Landroid/os/Bundle;
    :cond_3
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gm/HtmlConversationActivity;->setResult(ILandroid/content/Intent;)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationActivity;->finish()V

    goto :goto_0

    .line 540
    .end local v0           #finish:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 7
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLoaded:Z

    .line 957
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationPosition:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 958
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationMenu:Lcom/google/android/gm/ConversationMenu;

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMaxMessageId:J

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gm/ConversationMenu;->update(Lcom/google/android/gm/ConversationInfo;)V

    .line 959
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p2, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/HtmlConversationActivity;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v2

    .line 476
    .local v2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v10

    .line 479
    .local v10, handled:Z
    if-nez v10, :cond_2

    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 519
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 527
    :cond_0
    :goto_0
    return v10

    .line 482
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->onMarkUnread()V

    .line 483
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->getInitialUnreadMessages()Ljava/util/ArrayList;

    move-result-object v11

    .line 489
    .local v11, initialUnread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object v5, v11

    .line 491
    .local v5, conversationsToMarkUnread:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    const-string v1, "^u"

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v12

    .line 492
    .local v12, unreadLabel:Lcom/google/android/gm/provider/Label;
    new-instance v4, Lcom/google/android/gm/LabelOperations;

    const/4 v0, 0x1

    invoke-direct {v4, v12, v0}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 493
    .local v4, labelOp:Lcom/google/android/gm/LabelOperations;
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 496
    const/4 v10, 0x1

    .line 497
    goto :goto_0

    .end local v4           #labelOp:Lcom/google/android/gm/LabelOperations;
    .end local v5           #conversationsToMarkUnread:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v12           #unreadLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    move-object v5, v2

    .line 489
    goto :goto_1

    .line 501
    .end local v11           #initialUnread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationInfo;>;"
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->emulateShiftHeld()V

    .line 502
    const/4 v10, 0x1

    .line 503
    goto :goto_0

    .line 507
    :sswitch_2
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->MUTE:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->performActionAndMaybeAdvance(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    .line 508
    const/4 v10, 0x1

    .line 509
    goto :goto_0

    .line 513
    :sswitch_3
    sget-object v0, Lcom/google/android/gm/HtmlConversationActivity$NextOperation;->SPAM:Lcom/google/android/gm/HtmlConversationActivity$NextOperation;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationActivity;->performActionAndMaybeAdvance(Lcom/google/android/gm/HtmlConversationActivity$NextOperation;)V

    .line 514
    const/4 v10, 0x1

    .line 515
    goto :goto_0

    .line 522
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00a8

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->toggleStar()V

    goto :goto_0

    .line 480
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00a6 -> :sswitch_2
        0x7f0e00aa -> :sswitch_3
        0x7f0e00b0 -> :sswitch_0
        0x7f0e00b1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 415
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause() finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->detach()V

    .line 422
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 449
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    check-cast p2, Lcom/google/android/gm/ApplyRemoveLabelDialog;

    .end local p2
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gm/MenuHandler;->prepareLabelDialog(Lcom/google/android/gm/ApplyRemoveLabelDialog;Ljava/util/Map;Ljava/util/Collection;)V

    .line 453
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    .line 464
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLabels:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationActivity;->createConversationInfo()Ljava/util/Collection;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Z)V

    move v0, v5

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onRestart()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLoaded:Z

    .line 399
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationFragment;->startLoadingConversation()V

    .line 400
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 435
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/MenuHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 436
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 388
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mLoaded:Z

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/google/android/gm/MenuHandler;->attach(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/MenuHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 429
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onStart()V

    .line 405
    return-void
.end method

.method public onStartBulkOperation()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public onStartDragMode()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onStop()V

    .line 410
    return-void
.end method

.method public onStopDragMode()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public onUndoAvailable(Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter "op"

    .prologue
    .line 572
    return-void
.end method

.method public onUndoExpired()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onWindowFocusChanged(Z)V

    .line 280
    return-void
.end method

.method public taskInProgress()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method
