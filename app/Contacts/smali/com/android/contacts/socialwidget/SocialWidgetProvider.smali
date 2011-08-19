.class public Lcom/android/contacts/socialwidget/SocialWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SocialWidgetProvider.java"


# static fields
.field private static sLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/ContactLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method private static bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 9
    .parameter "context"
    .parameter "widgetId"
    .parameter "widgetManager"
    .parameter "contactData"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 127
    const-string v0, "SocialWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for widget with id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f040047

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 132
    .local v1, views:Landroid/widget/RemoteViews;
    sget-object v0, Lcom/android/contacts/ContactLoader$Result;->ERROR:Lcom/android/contacts/ContactLoader$Result;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/android/contacts/ContactLoader$Result;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result;

    if-ne p3, v0, :cond_1

    .line 134
    :cond_0
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/HashMap;Landroid/app/PendingIntent;)V

    .line 136
    invoke-static {p0}, Lcom/android/contacts/util/ContactBadgeUtil;->loadPlaceholderPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    .line 137
    invoke-static {v1, v3}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setStatusAttribution(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    invoke-virtual {p2, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 165
    return-void

    .line 139
    :cond_1
    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v7

    .line 140
    .local v7, photo:[B
    if-eqz v7, :cond_2

    array-length v0, v7

    invoke-static {v7, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    .line 143
    invoke-static {p3, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/ContactLoader$Result;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setStatusAttribution(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 147
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v6, intent:Landroid/content/Intent;
    const/high16 v0, 0x1420

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    const-string v0, "mode"

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-static {p0, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 157
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    const v0, 0x7f0700b1

    invoke-virtual {v1, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 159
    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/HashMap;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 140
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/ContactBadgeUtil;->loadPlaceholderPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "widgetId"
    .parameter "forceLoad"

    .prologue
    const v7, 0x7f070037

    const/4 v6, 0x0

    .line 85
    sget-object v4, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ContactLoader;

    .line 87
    .local v3, previousLoader:Lcom/android/contacts/ContactLoader;
    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    .line 88
    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader;->startLoading()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader;->reset()V

    .line 97
    :cond_2
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040047

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 99
    .local v2, loadingViews:Landroid/widget/RemoteViews;
    const v4, 0x7f0c019a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    const v4, 0x7f0700b3

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    invoke-virtual {p1, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 106
    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getContactUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, contactUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/contacts/ContactLoader;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 113
    .local v0, contactLoader:Lcom/android/contacts/ContactLoader;
    new-instance v4, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;-><init>(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v6, v4}, Lcom/android/contacts/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 121
    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->startLoading()V

    .line 122
    sget-object v4, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/HashMap;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "context"
    .parameter "views"
    .parameter "displayName"
    .parameter "phoneticName"
    .parameter
    .parameter "defaultIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p4, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 180
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    move-object p2, p2

    .line 181
    .local p2, name:Ljava/lang/CharSequence;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const v0, 0x7f0c0197

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 p2, 0x1

    aput-object p3, v1, p2

    .end local p2           #name:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 187
    .restart local p2       #name:Ljava/lang/CharSequence;
    :cond_0
    if-nez p2, :cond_1

    .line 188
    const p2, 0x104000e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .end local p2           #name:Ljava/lang/CharSequence;
    move-result-object p2

    .line 190
    .restart local p2       #name:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    .end local p3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p3, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 193
    .local p3, sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 194
    .local v0, styleSpan:Landroid/text/style/StyleSpan;
    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, p3, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 195
    const/4 p3, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .end local p3           #sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    move-result p2

    .end local p2           #name:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-virtual {v2, v0, p3, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    const-wide/16 v0, 0x0

    .line 198
    .local v0, latestStatusId:J
    const/4 p2, 0x0

    .line 199
    .local p2, latestStatus:Lcom/android/contacts/util/DataStatus;
    if-eqz p4, :cond_8

    .line 200
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .local p3, i$:Ljava/util/Iterator;
    move-object p4, p2

    .end local p2           #latestStatus:Lcom/android/contacts/util/DataStatus;
    .local p4, latestStatus:Lcom/android/contacts/util/DataStatus;
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 201
    .local p2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/DataStatus;

    .line 202
    .local v3, status:Lcom/android/contacts/util/DataStatus;
    invoke-virtual {v3}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/android/contacts/util/DataStatus;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/contacts/util/DataStatus;->getTimestamp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 205
    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    .end local p2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 206
    move-object p2, v3

    .end local p4           #latestStatus:Lcom/android/contacts/util/DataStatus;
    .local p2, latestStatus:Lcom/android/contacts/util/DataStatus;
    :goto_1
    move-object p4, p2

    .line 208
    .end local p2           #latestStatus:Lcom/android/contacts/util/DataStatus;
    .restart local p4       #latestStatus:Lcom/android/contacts/util/DataStatus;
    goto :goto_0

    .end local v3           #status:Lcom/android/contacts/util/DataStatus;
    :cond_3
    move-object p2, p4

    .end local p4           #latestStatus:Lcom/android/contacts/util/DataStatus;
    .restart local p2       #latestStatus:Lcom/android/contacts/util/DataStatus;
    move-wide p3, v0

    .line 211
    .end local v0           #latestStatusId:J
    .local p3, latestStatusId:J
    :goto_2
    if-nez p2, :cond_5

    .line 212
    const p0, 0x7f070037

    invoke-virtual {p1, p0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 213
    .end local p0
    const p0, 0x7f070037

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    .end local p2           #latestStatus:Lcom/android/contacts/util/DataStatus;
    const p0, 0x7f0700b3

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    if-eqz p5, :cond_4

    .line 218
    const p0, 0x7f0700af

    invoke-virtual {p1, p0, p5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 237
    .end local p3           #latestStatusId:J
    .end local p5
    :cond_4
    :goto_3
    return-void

    .line 221
    .restart local p0
    .restart local p2       #latestStatus:Lcom/android/contacts/util/DataStatus;
    .restart local p3       #latestStatusId:J
    .restart local p5
    :cond_5
    invoke-virtual {p2}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object p2

    .line 222
    .local p2, status:Ljava/lang/CharSequence;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .end local p5
    const/16 v0, 0x30

    if-gt p5, v0, :cond_6

    .line 223
    const-string p5, "\n"

    invoke-virtual {v2, p5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    :goto_4
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 228
    const p2, 0x7f0700b3

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 229
    .end local p2           #status:Ljava/lang/CharSequence;
    const p2, 0x7f070037

    const/16 p5, 0x8

    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 230
    const p2, 0x7f0700b3

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 231
    new-instance p2, Landroid/content/Intent;

    const-string p5, "android.intent.action.VIEW"

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .end local p3           #latestStatusId:J
    invoke-direct {p2, p5, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local p2, intent:Landroid/content/Intent;
    const p3, 0x7f0700b2

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static {p0, p4, p2, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .end local p0
    invoke-virtual {p1, p3, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_3

    .line 225
    .restart local p0
    .local p2, status:Ljava/lang/CharSequence;
    .restart local p3       #latestStatusId:J
    :cond_6
    const-string p5, "  "

    invoke-virtual {v2, p5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .restart local v0       #latestStatusId:J
    .restart local v3       #status:Lcom/android/contacts/util/DataStatus;
    .local p2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    .local p3, i$:Ljava/util/Iterator;
    .restart local p4       #latestStatus:Lcom/android/contacts/util/DataStatus;
    .restart local p5
    :cond_7
    move-object p2, p4

    .end local p4           #latestStatus:Lcom/android/contacts/util/DataStatus;
    .local p2, latestStatus:Lcom/android/contacts/util/DataStatus;
    goto :goto_1

    .end local v3           #status:Lcom/android/contacts/util/DataStatus;
    .end local p3           #i$:Ljava/util/Iterator;
    .local p4, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :cond_8
    move-wide p3, v0

    .end local v0           #latestStatusId:J
    .end local p4           #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    .local p3, latestStatusId:J
    goto :goto_2
.end method

.method private static setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "views"
    .parameter "photo"

    .prologue
    .line 169
    const v0, 0x7f0700b0

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 170
    return-void
.end method

.method private static setStatusAttribution(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "views"
    .parameter "attribution"

    .prologue
    const v1, 0x7f07003c

    .line 244
    if-nez p1, :cond_0

    .line 245
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 72
    move-object v1, p2

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 73
    .local v0, appWidgetId:I
    sget-object v5, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ContactLoader;

    .line 74
    .local v4, loader:Lcom/android/contacts/ContactLoader;
    if-eqz v4, :cond_0

    .line 75
    const-string v5, "SocialWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping loader for widget with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader;->stopLoading()V

    .line 77
    sget-object v5, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 72
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0           #appWidgetId:I
    .end local v4           #loader:Lcom/android/contacts/ContactLoader;
    :cond_1
    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->remove(Landroid/content/Context;[I)V

    .line 81
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 61
    move-object v1, p3

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 62
    .local v0, appWidgetId:I
    const-string v4, "SocialWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdate called for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #appWidgetId:I
    :cond_0
    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 66
    .restart local v0       #appWidgetId:I
    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    .end local v0           #appWidgetId:I
    :cond_1
    return-void
.end method
