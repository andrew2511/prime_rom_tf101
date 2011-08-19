.class Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;
.super Ljava/lang/Object;
.source "CurrentlyReadingWidgetProvider.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->showCurrentlyReading(Landroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$coverSize:I

.field final synthetic val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

.field final synthetic val$pdBmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;ILandroid/content/Context;Lcom/amazon/kcp/library/models/ILocalBookItem;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->this$0:Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;

    iput p2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$coverSize:I

    iput-object p3, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

    iput-object p5, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$pdBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 212
    if-eqz p1, :cond_3

    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCover: coverSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$coverSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCover: updating cover, image is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDefaultCover = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenBookIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030050

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 220
    const v2, 0x7f0c00d7

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

    iget-object v2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/amazon/android/util/UIUtils;->formatLongPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_1
    if-nez v0, :cond_0

    .line 228
    const-string v0, ""

    .line 230
    :cond_0
    const v2, 0x7f0c00d9

    iget-object v3, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    const v2, 0x7f0c00da

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$pdBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 236
    const v0, 0x7f0c00db

    iget-object v2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$pdBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 240
    :cond_1
    if-eqz p1, :cond_2

    .line 245
    const v0, 0x7f0c00d8

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 249
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    iget-object v2, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 254
    invoke-virtual {v2, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 255
    return-void

    .line 212
    :cond_3
    const-string v0, "null"

    goto/16 :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider$1;->val$localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAuthor()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
