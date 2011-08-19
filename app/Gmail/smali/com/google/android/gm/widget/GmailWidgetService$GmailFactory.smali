.class Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;
.super Ljava/lang/Object;
.source "GmailWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/widget/GmailWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmailFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;,
        Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$GmailFactoryContentObserver;
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mInboxLabel:Ljava/lang/String;

.field private mLabelCount:I

.field private mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

.field private mObserver:Landroid/database/ContentObserver;

.field private mShouldShowViewMore:Z

.field private mUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;

.field private mWidgetConversationViewBuilder:Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

.field final synthetic this$0:Lcom/google/android/gm/widget/GmailWidgetService;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/widget/GmailWidgetService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->this$0:Lcom/google/android/gm/widget/GmailWidgetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    .line 89
    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->updateWidget()V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->updateShowViewMore()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mInboxLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mInboxLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->setupInbox()V

    return-void
.end method

.method private filterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "subject"

    .prologue
    .line 404
    move-object v1, p1

    .line 405
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 406
    const/16 v3, 0x5d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 407
    .local v0, end:I
    if-lez v0, :cond_0

    .line 408
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, tag:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/google/android/gm/Utils;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .end local v0           #end:I
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getFooterView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 314
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040035

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 315
    .local v0, view:Landroid/widget/RemoteViews;
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_0
    sget-object v2, Lcom/google/android/gm/widget/GmailWidgetService$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 329
    :goto_0
    monitor-exit v1

    .line 330
    return-object v0

    .line 318
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No footer should be shown for a loaded cursor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 322
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 323
    goto :goto_0

    .line 325
    :pswitch_2
    const v2, 0x7f0e009e

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getTextForError(Lcom/google/android/gm/provider/Gmail$CursorError;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTextForError(Lcom/google/android/gm/provider/Gmail$CursorError;)Ljava/lang/String;
    .locals 3
    .parameter "cursorError"

    .prologue
    .line 361
    sget-object v1, Lcom/google/android/gm/widget/GmailWidgetService$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorError:[I

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$CursorError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 385
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, errorString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 366
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 369
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040035

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 292
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0e009e

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0152

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    const v1, 0x7f0e009d

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 296
    return-object v0
.end method

.method private setupInbox()V
    .locals 5

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ConversationCursorLoader;->stopLoading()V

    .line 141
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ConversationCursorLoader;->reset()V

    .line 143
    :cond_0
    const-string v1, ""

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mInboxLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/Utils;->makeQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->NO:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    .line 149
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;

    invoke-direct {v3, p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$1;-><init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/ConversationCursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/ConversationCursorLoader;->startLoading()V

    .line 168
    return-void
.end method

.method private updateShowViewMore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCount:I

    iget v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelCount:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 191
    .local v0, shouldShowViewMore:Z
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    if-eq v0, v1, :cond_0

    .line 192
    iput-boolean v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    .line 193
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;

    invoke-virtual {v1, v3}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->sendEmptyMessage(I)Z

    .line 195
    :cond_0
    return-void

    .end local v0           #shouldShowViewMore:Z
    :cond_1
    move v0, v3

    .line 190
    goto :goto_0
.end method

.method private updateWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-nez v2, :cond_0

    .line 206
    monitor-exit v1

    move v1, v4

    .line 215
    :goto_0
    return v1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCount:I

    .line 213
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v2, v3, :cond_1

    move v0, v5

    .line 214
    .local v0, shouldShowFooter:Z
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCount:I

    if-eqz v0, :cond_2

    move v2, v5

    :goto_2
    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    if-eqz v2, :cond_3

    move v2, v5

    :goto_3
    add-int/2addr v1, v2

    goto :goto_0

    .end local v0           #shouldShowFooter:Z
    :cond_1
    move v0, v4

    .line 213
    goto :goto_1

    .line 214
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0       #shouldShowFooter:Z
    :cond_2
    move v2, v4

    .line 215
    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 345
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 304
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040035

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 305
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0e009e

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0085

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 307
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 19
    .parameter "position"

    .prologue
    .line 227
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$400()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, fromInstructions:Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 231
    .local v14, dateMs:J
    const/4 v10, 0x0

    .line 232
    .local v10, subject:Ljava/lang/String;
    const/4 v11, 0x0

    .line 233
    .local v11, snippet:Ljava/lang/String;
    const/4 v12, 0x0

    .line 234
    .local v12, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v13, 0x0

    .line 237
    .local v13, hasAttachments:Z
    const/16 v16, 0x0

    .line 240
    .local v16, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    move v5, v0

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v5

    .line 283
    :goto_0
    return-object v3

    .line 250
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCount:I

    move v5, v0

    move/from16 v0, p1

    move v1, v5

    if-lt v0, v1, :cond_1

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getFooterView()Landroid/widget/RemoteViews;

    move-result-object v5

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v5

    goto :goto_0

    .line 255
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v4

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getDateMs()J

    move-result-wide v14

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v11

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v12

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->hasAttachments()Z

    move-result v13

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v16

    .line 264
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    :try_start_6
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 268
    .local v5, senderBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 270
    .local v6, statusBuilder:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/16 v7, 0x19

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZ)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3, v14, v15}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 277
    .local v9, date:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mWidgetConversationViewBuilder:Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

    move-object v7, v0

    move-object v8, v5

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->getStyledView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Z)Landroid/widget/RemoteViews;

    move-result-object v17

    .line 281
    .local v17, remoteViews:Landroid/widget/RemoteViews;
    const v3, 0x7f0e0092

    move-object/from16 v0, v17

    move v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 283
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 264
    .end local v5           #senderBuilder:Landroid/text/SpannableStringBuilder;
    .end local v6           #statusBuilder:Landroid/text/SpannableStringBuilder;
    .end local v9           #date:Ljava/lang/CharSequence;
    .end local v17           #remoteViews:Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5

    .line 284
    :catchall_1
    move-exception v3

    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 101
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 102
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/google/android/gm/provider/Gmail;

    invoke-direct {v2, v1}, Lcom/google/android/gm/provider/Gmail;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 103
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    .line 105
    iput-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 107
    :cond_0
    new-instance v2, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;-><init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Lcom/google/android/gm/widget/GmailWidgetService$1;)V

    iput-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;

    .line 109
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mInboxLabel:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->setupInbox()V

    .line 113
    new-instance v2, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mWidgetConversationViewBuilder:Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

    .line 116
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gm/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget-account-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    iget-object v4, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/widget/GmailWidgetProvider;->isWidgetConfigured(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    iget-object v4, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/widget/GmailWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;)V

    .line 125
    :cond_1
    iput v5, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelCount:I

    .line 126
    iput-boolean v5, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    .line 127
    new-instance v2, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$GmailFactoryContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$GmailFactoryContentObserver;-><init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mObserver:Landroid/database/ContentObserver;

    .line 128
    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->stopLoading()V

    .line 177
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLoader:Lcom/google/android/gm/provider/ConversationCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->reset()V

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->this$0:Lcom/google/android/gm/widget/GmailWidgetService;

    invoke-virtual {v0}, Lcom/google/android/gm/widget/GmailWidgetService;->stopSelf()V

    .line 183
    return-void
.end method
