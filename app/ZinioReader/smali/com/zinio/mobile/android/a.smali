.class public final Lcom/zinio/mobile/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/Intent;

.field public static final b:Landroid/content/Intent;

.field public static final c:Landroid/content/Intent;

.field public static final d:Landroid/content/Intent;

.field public static final e:Landroid/content/Intent;

.field public static final f:Landroid/content/Intent;

.field public static final g:Landroid/content/Intent;

.field public static final h:Landroid/content/Intent;

.field public static final i:Landroid/content/Intent;

.field public static final j:Landroid/content/Intent;

.field public static final k:Landroid/content/Intent;

.field public static final l:Landroid/content/Intent;

.field public static final m:Landroid/content/Intent;

.field private static n:Landroid/content/Intent;

.field private static o:Landroid/content/Intent;

.field private static p:Landroid/content/Intent;

.field private static q:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x2400

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.service.DOWNLOAD_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->a:Landroid/content/Intent;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.SPLASH_SCREEN_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->b:Landroid/content/Intent;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.WELCOME_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.FAQ_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.REGISTER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->e:Landroid/content/Intent;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.LOGIN_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->f:Landroid/content/Intent;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.CHANGE_PASSWORD_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->g:Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.VIDEO_PLAYER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->h:Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.LIBRARY_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_tips"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.LIBRARY_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_tips"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/a;->j:Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.LIBRARY_DELETE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->n:Landroid/content/Intent;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.LIBRARY_DELETE_LIST_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->o:Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.MORE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.MANAGE_TIPS_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->p:Landroid/content/Intent;

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.user.LOG_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->l:Landroid/content/Intent;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.SPLASH_SCREEN_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kill"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/a;->m:Landroid/content/Intent;

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.ABOUT_US_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a;->q:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 235
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zinio/mobile/android/a;->n:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 239
    :goto_0
    const-string v1, "sort_by_parameter"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    return-object v0

    .line 235
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zinio/mobile/android/a;->o:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.BROWSE_MODE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v0, p0, p1}, Lcom/zinio/mobile/android/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.TOC_THUMBNAILS_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {v0, p0, p1}, Lcom/zinio/mobile/android/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "current_page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.TEXT_MODE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {v0, p0, p1}, Lcom/zinio/mobile/android/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "article_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 223
    const-string v1, "current_page"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.TOC_ARTICLES_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/zinio/mobile/android/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "only_current_page_articles"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    return-object v0

    .line 195
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.TOC_ARTICLES_SMALL_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    const-string v0, "pub_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v0, "issue_id"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.SHOP_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    const-string v1, "shop_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zinio.mobile.android.view.dialogs.DIALOG_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    const-string v1, "dialog_title"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "dialog_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    return-object v0
.end method
