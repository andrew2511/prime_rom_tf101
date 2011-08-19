.class public Lcom/zinio/mobile/android/App;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation runtime Lorg/acra/a/a;
    a = "dDBUTktuMHFWWnFERng4WGg0OVBTMmc6MQ"
    c = .enum Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;
    m = 0x7f080049
.end annotation


# static fields
.field private static a:Z

.field private static b:Landroid/app/Application;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static final k:Landroid/net/Uri;

.field private static l:Landroid/content/SharedPreferences;

.field private static m:Landroid/net/Uri;

.field private static n:Landroid/net/Uri;

.field private static o:Landroid/net/Uri;

.field private static p:Landroid/net/Uri;

.field private static q:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    sput-boolean v1, Lcom/zinio/mobile/android/App;->a:Z

    .line 53
    sput-boolean v1, Lcom/zinio/mobile/android/App;->g:Z

    .line 54
    sput-boolean v0, Lcom/zinio/mobile/android/App;->h:Z

    .line 56
    sput-boolean v0, Lcom/zinio/mobile/android/App;->i:Z

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    .line 87
    const-string v0, "content://com.zinio.android.settings.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    sput-object v0, Lcom/zinio/mobile/android/App;->k:Landroid/net/Uri;

    const-string v1, "DownloadedService"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->m:Landroid/net/Uri;

    .line 132
    sget-object v0, Lcom/zinio/mobile/android/App;->k:Landroid/net/Uri;

    const-string v1, "PreloadedService"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->n:Landroid/net/Uri;

    .line 136
    sget-object v0, Lcom/zinio/mobile/android/App;->k:Landroid/net/Uri;

    const-string v1, "BaseUrl"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->o:Landroid/net/Uri;

    .line 140
    sget-object v0, Lcom/zinio/mobile/android/App;->k:Landroid/net/Uri;

    const-string v1, "IgnoreMinReqs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->p:Landroid/net/Uri;

    .line 144
    sget-object v0, Lcom/zinio/mobile/android/App;->k:Landroid/net/Uri;

    const-string v1, "LibLayout"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->q:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    new-instance v0, Lcom/zinio/mobile/android/b;

    invoke-direct {v0, p0, p2}, Lcom/zinio/mobile/android/b;-><init>(Lcom/zinio/mobile/android/a/a/j;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    sput-boolean p0, Lcom/zinio/mobile/android/App;->h:Z

    .line 156
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/zinio/mobile/android/App;->h:Z

    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2
    .parameter

    .prologue
    .line 317
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/zinio/mobile/android/a;->b:Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 542
    if-nez p1, :cond_0

    move v0, v4

    .line 568
    :goto_0
    return v0

    .line 546
    :cond_0
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/App;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 548
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->l:Landroid/content/SharedPreferences;

    .line 553
    :cond_1
    sget-object v0, Lcom/zinio/mobile/android/App;->l:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v1, "SHARED PREFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared Prefs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eq v0, p1, :cond_2

    .line 558
    sget-object v0, Lcom/zinio/mobile/android/App;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    move v0, v4

    .line 568
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 583
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    sput-object v0, Lcom/zinio/mobile/android/App;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, p1

    .line 594
    goto :goto_0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 370
    .line 371
    if-eqz p1, :cond_1

    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 375
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    if-eqz p1, :cond_2

    sget-object v1, Lcom/zinio/mobile/android/App;->n:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 378
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "ApplicationNameServiceKey"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/App;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 383
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 389
    :goto_2
    if-nez v0, :cond_0

    .line 390
    :try_start_1
    const-string v1, "ApplicationNameServiceKey"

    invoke-static {v1, v6}, Lcom/zinio/mobile/android/App;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 399
    :cond_0
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application Service name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    return-object v0

    .line 371
    :cond_1
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 376
    :cond_2
    :try_start_2
    sget-object v1, Lcom/zinio/mobile/android/App;->m:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    .line 393
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 396
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationName caused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_3

    .line 393
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :cond_3
    move-object v0, v7

    goto :goto_2
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 172
    sget-boolean v0, Lcom/zinio/mobile/android/App;->a:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/zinio/mobile/android/App;->g:Z

    return v0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/zinio/mobile/android/App;->g:Z

    if-nez v0, :cond_0

    .line 192
    const-class v0, Lcom/zinio/mobile/android/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 195
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zinio/mobile/android/App;->g:Z

    .line 196
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 202
    sget-boolean v0, Lcom/zinio/mobile/android/App;->g:Z

    if-eqz v0, :cond_0

    .line 203
    const-class v0, Lcom/zinio/mobile/android/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 206
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zinio/mobile/android/App;->g:Z

    .line 207
    return-void
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/zinio/mobile/android/App;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/zinio/mobile/android/App;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/zinio/mobile/android/App;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 298
    sget-boolean v0, Lcom/zinio/mobile/android/App;->i:Z

    return v0
.end method

.method public static k()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zinio/mobile/android/App;->i:Z

    .line 306
    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 412
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    sget-object v1, Lcom/zinio/mobile/android/App;->o:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 419
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 424
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    const-string v1, "BaseUrl"

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/App;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v6, :cond_1

    .line 431
    const-string v1, "App Class"

    const-string v2, "Failed to cache base url"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_2

    .line 445
    :goto_0
    return-object v0

    .line 434
    :cond_2
    const-string v0, "https://services.zinio.com/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseURL caused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    :cond_3
    const-string v0, "BaseUrl"

    const-string v1, "https://services.zinio.com/"

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/App;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 456
    const-string v1, "com.zinio.android.settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    .line 460
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageManager.NameNotFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    move v0, v3

    .line 471
    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldIgnoreMinimumRequirements Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public static n()V
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    sput-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 485
    sget-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    .line 528
    :goto_0
    return-object v0

    .line 489
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Grid"

    move-object v6, v0

    .line 495
    :goto_1
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/zinio/mobile/android/App;->q:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 499
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    if-eqz v0, :cond_1

    :try_start_1
    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 511
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 512
    sget-object v0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_2

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v7

    .line 520
    :cond_2
    if-nez v0, :cond_4

    .line 521
    const-string v0, "LibLayout"

    invoke-static {v0, v6}, Lcom/zinio/mobile/android/App;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    .line 528
    :goto_3
    sget-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    goto :goto_0

    .line 489
    :cond_3
    const-string v0, "List"

    move-object v6, v0

    goto :goto_1

    .line 505
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 508
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayout caused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    .line 524
    :cond_4
    const-string v1, "LibLayout"

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/App;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 526
    sput-object v0, Lcom/zinio/mobile/android/App;->j:Ljava/lang/String;

    goto :goto_3

    .line 505
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :cond_5
    move-object v0, v7

    goto :goto_2
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 211
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 212
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 213
    sput-object p0, Lcom/zinio/mobile/android/App;->b:Landroid/app/Application;

    .line 215
    invoke-virtual {p0}, Lcom/zinio/mobile/android/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/zinio/mobile/android/App;->a:Z

    .line 217
    const-string v0, "settings"

    invoke-virtual {p0, v0, v3}, Lcom/zinio/mobile/android/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    const-string v1, "installationUuid"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    sput-object v1, Lcom/zinio/mobile/android/App;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 222
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zinio/mobile/android/App;->c:Ljava/lang/String;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    const-string v1, "installationUuid"

    sget-object v2, Lcom/zinio/mobile/android/App;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 232
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/App;->b(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/App;->d:Ljava/lang/String;

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.zinio.mobile.android"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_1
    if-eqz v0, :cond_3

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_2
    sput v1, Lcom/zinio/mobile/android/App;->e:I

    .line 253
    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_3
    sput-object v0, Lcom/zinio/mobile/android/App;->f:Ljava/lang/String;

    .line 254
    return-void

    :cond_2
    move v0, v3

    .line 232
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v4

    goto :goto_1

    :cond_3
    move v1, v3

    .line 252
    goto :goto_2

    .line 253
    :cond_4
    const-string v0, ""

    goto :goto_3
.end method
