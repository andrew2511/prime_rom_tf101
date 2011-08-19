.class public Lcom/android/email/widget/EmailWidget;
.super Ljava/lang/Object;
.source "EmailWidget.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidget$WidgetUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_URI:Landroid/net/Uri;

.field private static final COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

.field private static final COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

.field private static sConfigureText:Ljava/lang/String;

.field private static sDateFontSize:I

.field private static sDefaultTextColor:I

.field private static sLightTextColor:I

.field private static sSenderFontSize:I

.field private static sSubjectFontSize:I

.field private static sSubjectSnippetDivider:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

.field private final mLoader:Lcom/android/email/widget/EmailWidgetLoader;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mWidgetId:I

.field private final mWidgetManager:Landroid/appwidget/AppWidgetManager;

.field mWidgetView:Lcom/android/email/widget/WidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "widget://command"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    .line 94
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "switch_list_view"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    .line 97
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "view_message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "_widgetId"

    .prologue
    const v4, 0x7f0a001b

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v1, Lcom/android/email/widget/WidgetView;->UNINITIALIZED_VIEW:Lcom/android/email/widget/WidgetView;

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    .line 133
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "EmailWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating EmailWidget with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    .line 137
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 139
    iput p2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    .line 140
    new-instance v1, Lcom/android/email/widget/EmailWidgetLoader;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/email/widget/EmailWidgetLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    .line 141
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/email/widget/EmailWidgetLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 142
    sget-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 147
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    .line 148
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    .line 149
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    .line 151
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    .line 152
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    .line 153
    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sConfigureText:Ljava/lang/String;

    .line 155
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/widget/EmailWidget;Lcom/android/email/widget/WidgetView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/email/widget/EmailWidget;->loadView(Lcom/android/email/widget/WidgetView;)V

    return-void
.end method

.method private addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 361
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 362
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 365
    if-eqz p3, :cond_0

    .line 366
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 369
    :cond_0
    return-object v0
.end method

.method private getStyledSubjectSnippet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7
    .parameter "subject"
    .parameter "snippet"
    .parameter "read"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 382
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 383
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 384
    .local v0, hasSubject:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 385
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 386
    .local v1, ss:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/StyleSpan;

    if-eqz p3, :cond_3

    move v4, v5

    :goto_0
    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 388
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 390
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    const/4 v0, 0x1

    .line 393
    .end local v1           #ss:Landroid/text/SpannableString;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 394
    if-eqz v0, :cond_1

    .line 395
    sget-object v3, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 398
    .restart local v1       #ss:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 400
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 402
    .end local v1           #ss:Landroid/text/SpannableString;
    :cond_2
    sget v3, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    invoke-direct {p0, v2, v3, v5}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 386
    .restart local v1       #ss:Landroid/text/SpannableString;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isCursorValid()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadView(Lcom/android/email/widget/WidgetView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0, p1}, Lcom/android/email/widget/EmailWidgetLoader;->load(Lcom/android/email/widget/WidgetView;)V

    .line 190
    return-void
.end method

.method private static openMessage(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 280
    new-instance v0, Lcom/android/email/widget/EmailWidget$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/widget/EmailWidget$1;-><init>(Landroid/content/Context;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method public static processIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 248
    .local v3, data:Landroid/net/Uri;
    if-nez v3, :cond_0

    move v7, v9

    .line 275
    :goto_0
    return v7

    .line 251
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 254
    .local v5, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_1

    .line 255
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 257
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, command:Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 261
    .local v0, arg1:J
    const-string v7, "view_message"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 263
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {p0, v7, v8, v0, v1}, Lcom/android/email/widget/EmailWidget;->openMessage(Landroid/content/Context;JJ)V

    :cond_2
    :goto_1
    move v7, v10

    .line 275
    goto :goto_0

    .line 264
    :cond_3
    const-string v7, "switch_list_view"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v7

    long-to-int v8, v0

    invoke-virtual {v7, v8}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v6

    .line 267
    .local v6, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v6, :cond_2

    .line 268
    invoke-virtual {v6}, Lcom/android/email/widget/EmailWidget;->switchView()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v0           #arg1:J
    .end local v6           #widget:Lcom/android/email/widget/EmailWidget;
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/lang/NumberFormatException;
    move v7, v9

    .line 273
    goto :goto_0
.end method

.method private setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 3
    .parameter "views"
    .parameter "buttonId"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 220
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 221
    return-void
.end method

.method private setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    int-to-long v1, v1

    invoke-static {p3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.android.email/widget_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 206
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 207
    return-void
.end method

.method private varargs setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V
    .locals 8
    .parameter "views"
    .parameter "viewId"
    .parameter "baseUri"
    .parameter "args"

    .prologue
    .line 233
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 235
    .local v2, builder:Landroid/net/Uri$Builder;
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 236
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v0           #arg:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "com.android.email/widget_data"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 240
    return-void
.end method

.method private setupTitleAndCount(Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "views"

    .prologue
    .line 293
    const v1, 0x7f0f00c3

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v3, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/email/widget/WidgetView;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    const v1, 0x7f0f00c4

    sget-object v2, Lcom/android/email/widget/EmailWidget;->sConfigureText:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 295
    const-string v0, ""

    .line 296
    .local v0, count:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v2}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getMessageCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_0
    const v1, 0x7f0f00c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method private updateHeader()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f0f00c8

    const v6, 0x7f0f00c6

    const v5, 0x7f0f00c7

    const/4 v4, 0x0

    .line 306
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 315
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 318
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v2, v5, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 320
    invoke-direct {p0, v0}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 322
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 324
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 325
    invoke-virtual {v0, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 326
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 328
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 329
    invoke-direct {p0, v0, v7, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 340
    :goto_0
    const v1, 0x7f0f00c1

    sget-object v2, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/widget/EmailWidget;->setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V

    .line 343
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 349
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 350
    return-void

    .line 332
    :cond_2
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 333
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    invoke-virtual {v0, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 336
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 337
    invoke-direct {p0, v0, v6, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 485
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 490
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040035

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 491
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0f00cf

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f08016f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 492
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 29
    .parameter "position"

    .prologue
    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->moveToPosition(I)Z

    move-result v25

    if-nez v25, :cond_1

    .line 409
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v25

    .line 474
    :goto_0
    return-object v25

    .line 411
    :cond_1
    new-instance v24, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const v26, 0x7f040034

    invoke-direct/range {v24 .. v26}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 413
    .local v24, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    const/16 v25, 0x1

    move/from16 v13, v25

    .line 414
    .local v13, isUnread:Z
    :goto_1
    const v9, 0x7f020096

    .line 415
    .local v9, drawableId:I
    if-eqz v13, :cond_2

    .line 416
    const v9, 0x7f020097

    .line 418
    :cond_2
    const v25, 0x7f0f00c9

    const-string v26, "setBackgroundResource"

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 421
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 424
    .local v10, from:Landroid/text/SpannableStringBuilder;
    if-eqz v13, :cond_5

    new-instance v25, Landroid/text/style/StyleSpan;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_2
    const/16 v26, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v27

    const/16 v28, 0x21

    move-object v0, v10

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 427
    sget v25, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    sget v26, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 428
    .local v19, styledFrom:Ljava/lang/CharSequence;
    const v25, 0x7f0f00ca

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getLong(I)J

    move-result-wide v22

    .line 432
    .local v22, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, date:Ljava/lang/String;
    sget v25, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    sget v26, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 435
    .local v18, styledDate:Ljava/lang/CharSequence;
    const v25, 0x7f0f00cd

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 439
    .local v20, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 440
    .local v17, snippet:Ljava/lang/String;
    if-nez v13, :cond_6

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/widget/EmailWidget;->getStyledSubjectSnippet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v21

    .line 442
    .local v21, subjectAndSnippet:Ljava/lang/CharSequence;
    const v25, 0x7f0f00ce

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0xa

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v15

    .line 445
    .local v15, messageFlags:I
    and-int/lit8 v25, v15, 0x4

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    move/from16 v12, v25

    .line 446
    .local v12, hasInvite:Z
    :goto_4
    const v25, 0x7f0f00cb

    if-eqz v12, :cond_8

    const/16 v26, 0x0

    :goto_5
    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    move/from16 v11, v25

    .line 450
    .local v11, hasAttachment:Z
    :goto_6
    const v25, 0x7f0f00cc

    if-eqz v11, :cond_a

    const/16 v26, 0x0

    :goto_7
    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 454
    :cond_3
    const v25, 0x7f0f005b

    const/16 v26, 0x4

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 469
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, messageId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x7

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 471
    .local v14, mailboxId:Ljava/lang/String;
    const v25, 0x7f0f00c9

    sget-object v26, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v16, v27, v28

    const/16 v28, 0x1

    aput-object v14, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    move-object/from16 v25, v24

    .line 474
    goto/16 :goto_0

    .line 413
    .end local v8           #date:Ljava/lang/String;
    .end local v9           #drawableId:I
    .end local v10           #from:Landroid/text/SpannableStringBuilder;
    .end local v11           #hasAttachment:Z
    .end local v12           #hasInvite:Z
    .end local v13           #isUnread:Z
    .end local v14           #mailboxId:Ljava/lang/String;
    .end local v15           #messageFlags:I
    .end local v16           #messageId:Ljava/lang/String;
    .end local v17           #snippet:Ljava/lang/String;
    .end local v18           #styledDate:Ljava/lang/CharSequence;
    .end local v19           #styledFrom:Ljava/lang/CharSequence;
    .end local v20           #subject:Ljava/lang/String;
    .end local v21           #subjectAndSnippet:Ljava/lang/CharSequence;
    .end local v22           #timestamp:J
    :cond_4
    const/16 v25, 0x0

    move/from16 v13, v25

    goto/16 :goto_1

    .line 424
    .restart local v9       #drawableId:I
    .restart local v10       #from:Landroid/text/SpannableStringBuilder;
    .restart local v13       #isUnread:Z
    :cond_5
    new-instance v25, Landroid/text/style/StyleSpan;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_2

    .line 440
    .restart local v8       #date:Ljava/lang/String;
    .restart local v17       #snippet:Ljava/lang/String;
    .restart local v18       #styledDate:Ljava/lang/CharSequence;
    .restart local v19       #styledFrom:Ljava/lang/CharSequence;
    .restart local v20       #subject:Ljava/lang/String;
    .restart local v22       #timestamp:J
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 445
    .restart local v15       #messageFlags:I
    .restart local v21       #subjectAndSnippet:Ljava/lang/CharSequence;
    :cond_7
    const/16 v25, 0x0

    move/from16 v12, v25

    goto/16 :goto_4

    .line 446
    .restart local v12       #hasInvite:Z
    :cond_8
    const/16 v26, 0x8

    goto/16 :goto_5

    .line 448
    :cond_9
    const/16 v25, 0x0

    move/from16 v11, v25

    goto/16 :goto_6

    .line 450
    .restart local v11       #hasAttachment:Z
    :cond_a
    const/16 v26, 0x8

    goto/16 :goto_7

    .line 456
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    move-object/from16 v25, v0

    const/16 v26, 0x9

    invoke-virtual/range {v25 .. v26}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getLong(I)J

    move-result-wide v5

    .line 457
    .local v5, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorId(J)I

    move-result v7

    .line 458
    .local v7, colorId:I
    const/16 v25, -0x1

    move v0, v7

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 460
    const v25, 0x7f0f005b

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 461
    const v25, 0x7f0f005b

    move-object/from16 v0, v24

    move/from16 v1, v25

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_8

    .line 464
    :cond_c
    const v25, 0x7f0f005b

    const/16 v26, 0x4

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onDeleted()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 514
    :cond_0
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->remove(I)V

    .line 515
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 522
    :cond_0
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->remove(I)V

    .line 523
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    check-cast p2, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    .end local p2
    iput-object p2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    .line 175
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader;->getLoadingWidgetView()Lcom/android/email/widget/WidgetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    .line 177
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 178
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->updateHeader()V

    .line 179
    invoke-direct {p0, v0}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 180
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 181
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    const v3, 0x7f0f00c7

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 182
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/widget/EmailWidget;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->switchView()V

    .line 162
    return-void
.end method

.method switchView()V
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;-><init>(Lcom/android/email/widget/EmailWidget;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 541
    return-void
.end method

.method validateAndUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    new-instance v0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;-><init>(Lcom/android/email/widget/EmailWidget;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 534
    return-void
.end method
