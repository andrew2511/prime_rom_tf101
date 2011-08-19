.class public Lcom/android/vending/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/Util$CreditCardNumberFilter;
    }
.end annotation


# static fields
.field private static volatile sSystemWasUpgraded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/util/Util;->sSystemWasUpgraded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 9
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "surfaceSize"
    .parameter "contextAttribs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v7, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 485
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_0

    .line 514
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 491
    .local v6, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_1

    .line 492
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 497
    :cond_1
    invoke-interface {p0, p1, v6, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 500
    const/16 v7, 0x1f03

    invoke-static {v7}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, extensionList:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 504
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 505
    .local v2, extension:Ljava/lang/String;
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 510
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p0, p1, v7, v8, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 511
    invoke-interface {p0, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 512
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method

.method public static dipsToPixels(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "dips"

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "intent"

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 385
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 387
    .local v3, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 388
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 390
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, p2

    .line 399
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v4

    .line 397
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find billing receiver in package \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 399
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getAssetIdFromInfoUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 93
    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 100
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "country"

    .prologue
    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 361
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, iso:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 366
    .end local v0           #iso:Ljava/lang/String;
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    const-string p1, "US"

    .line 370
    :cond_1
    return-object p1
.end method

.method public static getGlExtensions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 440
    .local v2, sortedExtensions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->CACHED_GL_EXTENSIONS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, cachedExtensions:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/util/Util;->wasSystemUpgraded()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 442
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    :goto_0
    return-object v2

    .line 445
    :cond_0
    invoke-static {}, Lcom/android/vending/util/Util;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v3

    .line 448
    .local v3, unsortedExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 450
    const-string v4, " "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, flattened:Ljava/lang/String;
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->CACHED_GL_EXTENSIONS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v4, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getGlExtensionsFromDriver()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 519
    .local v5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 520
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    if-nez v0, :cond_0

    .line 521
    const-string v0, "Couldn\'t get EGL"

    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 581
    :goto_0
    return-object v5

    .line 526
    .restart local v0       #egl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_0
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 527
    .local v1, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 528
    .local v2, version:[I
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 531
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 532
    .end local v2           #version:[I
    .local v10, numConfigs:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    const-string v0, "Couldn\'t get EGL config count"

    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .restart local v0       #egl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_1
    const/4 v2, 0x0

    aget v2, v10, v2

    new-array v7, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 539
    .local v7, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-interface {v0, v1, v7, v2, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 540
    const-string v0, "Couldn\'t get EGL configs"

    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    .restart local v0       #egl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_2
    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 554
    .local v3, surfaceSize:[I
    const/16 v2, 0x3098

    .line 555
    .local v2, EGL_CONTEXT_CLIENT_VERSION:I
    const/4 v2, 0x3

    new-array v8, v2, [I

    .end local v2           #EGL_CONTEXT_CLIENT_VERSION:I
    fill-array-data v8, :array_1

    .line 558
    .local v8, gles2:[I
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 560
    .local v6, attrib:[I
    const/4 v2, 0x0

    .local v2, i:I
    move v9, v2

    .end local v2           #i:I
    .local v9, i:I
    :goto_1
    const/4 v2, 0x0

    aget v2, v10, v2

    if-ge v9, v2, :cond_6

    .line 562
    aget-object v2, v7, v9

    const/16 v4, 0x3027

    invoke-interface {v0, v1, v2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 563
    const/4 v2, 0x0

    aget v2, v6, v2

    const/16 v4, 0x3050

    if-ne v2, v4, :cond_4

    .line 560
    :cond_3
    :goto_2
    add-int/lit8 v2, v9, 0x1

    .end local v9           #i:I
    .restart local v2       #i:I
    move v9, v2

    .end local v2           #i:I
    .restart local v9       #i:I
    goto :goto_1

    .line 567
    :cond_4
    const/4 v2, 0x1

    .line 568
    .local v2, EGL_OPENGL_ES_BIT:I
    const/4 v2, 0x4

    .line 569
    .local v2, EGL_OPENGL_ES2_BIT:I
    aget-object v2, v7, v9

    .end local v2           #EGL_OPENGL_ES2_BIT:I
    const/16 v4, 0x3040

    invoke-interface {v0, v1, v2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 570
    const/4 v2, 0x0

    aget v2, v6, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 571
    aget-object v2, v7, v9

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 573
    :cond_5
    const/4 v2, 0x0

    aget v2, v6, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 574
    aget-object v2, v7, v9

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_2

    .line 579
    :cond_6
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_0

    .line 547
    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 555
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public static getQueryFromSearchUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 113
    const-string v1, "q"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, query:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getReferrerFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 136
    const-string v1, "referrer"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, referrer:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 345
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 346
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 350
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 351
    .local v3, width:I
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 352
    .local v1, height:I
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .local v0, dimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public static getSearchQueryForPublisher(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "publisher"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchQueryForRelated(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "similar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 5
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    .line 590
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 591
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v3, v4

    .line 597
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 594
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 595
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v3, v4

    .line 597
    goto :goto_0
.end method

.method public static getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 1
    .parameter "parent"
    .parameter "child"
    .parameter "rect"

    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 319
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 320
    iget v0, p2, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static inflateView(ILandroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "resource"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "resource"
    .parameter "context"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 65
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    .local v0, vi:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static isEmptyOrSpaces(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static longestString(Ljava/util/Collection;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, strings:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 462
    .local v1, longest:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 465
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static needLoadMore(JJJ)Z
    .locals 2
    .parameter "scrollPosition"
    .parameter "loadedCount"
    .parameter "totalCount"

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 191
    const-string v1, "%lang%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    .line 194
    .local v0, locale:Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 195
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 197
    .end local v0           #locale:Ljava/util/Locale;
    :cond_1
    return-object p0
.end method

.method public static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 172
    const-string v2, "%locale%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    .line 175
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "%locale%"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 178
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #tmp:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static streamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "is"
    .parameter "maxLength"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 234
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 235
    .local v2, reader:Ljava/io/InputStreamReader;
    const/16 v5, 0x1000

    new-array v0, v5, [C

    .line 236
    .local v0, buffer:[C
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 237
    .local v3, sw:Ljava/io/StringWriter;
    const/4 v4, 0x0

    .line 238
    .local v4, totalRead:I
    const/4 v1, 0x0

    .line 241
    .local v1, read:I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v7, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 242
    add-int/2addr v4, v1

    .line 243
    array-length v5, v0

    invoke-virtual {v2, v0, v7, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .line 244
    if-eq v6, p1, :cond_1

    if-ge v4, p1, :cond_2

    :cond_1
    if-ne v1, v6, :cond_0

    .line 246
    :cond_2
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static wasSystemUpgraded()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 409
    sget-boolean v2, Lcom/android/vending/util/Util;->sSystemWasUpgraded:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 426
    :goto_0
    return v2

    .line 414
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 415
    .local v0, currentFingerprint:Ljava/lang/String;
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, lastFingerprint:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    const/4 v2, 0x0

    goto :goto_0

    .line 423
    :cond_1
    sput-boolean v3, Lcom/android/vending/util/Util;->sSystemWasUpgraded:Z

    .line 425
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v2, v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v2, v3

    .line 426
    goto :goto_0
.end method
