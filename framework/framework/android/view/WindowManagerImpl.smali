.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$CompatModeWrapper;
    }
.end annotation


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_IN_TOUCH_MODE:I = 0x1

.field private static final sCompatWindowManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sWindowManager:Landroid/view/WindowManagerImpl;


# instance fields
.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRoot;

.field private mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0}, Landroid/view/WindowManagerImpl;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V
    .registers 17
    .parameter "view"
    .parameter "params"
    .parameter "cih"
    .parameter "nest"

    .prologue
    .line 204
    instance-of v8, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_c

    .line 205
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Params must be WindowManager.LayoutParams"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    :cond_c
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 213
    .local v7, wparams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    .line 215
    .local v5, panelParentView:Landroid/view/View;
    monitor-enter p0

    .line 223
    const/4 v8, 0x0

    :try_start_13
    invoke-direct {p0, p1, v8}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v3

    .line 224
    .local v3, index:I
    if-ltz v3, :cond_50

    .line 225
    if-nez p4, :cond_3d

    .line 226
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already been added to the window manager."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 281
    .end local v3           #index:I
    :catchall_3a
    move-exception v8

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw v8

    .line 229
    .restart local v3       #index:I
    :cond_3d
    :try_start_3d
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v6, v8, v3

    .line 230
    .local v6, root:Landroid/view/ViewRoot;
    iget v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    .line 232
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewRoot;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 234
    monitor-exit p0

    .line 284
    :goto_4f
    return-void

    .line 239
    .end local v6           #root:Landroid/view/ViewRoot;
    :cond_50
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_7f

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7cf

    if-gt v8, v9, :cond_7f

    .line 241
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v8, :cond_7c

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    move v1, v8

    .line 242
    .local v1, count:I
    :goto_64
    const/4 v2, 0x0

    .local v2, i:I
    :goto_65
    if-ge v2, v1, :cond_7f

    .line 243
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v8, v8, v2

    iget-object v8, v8, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v8}, Landroid/view/ViewRoot$W;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, v9, :cond_79

    .line 244
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v5, v8, v2

    .line 242
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 241
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_7c
    const/4 v8, 0x0

    move v1, v8

    goto :goto_64

    .line 249
    :cond_7f
    new-instance v6, Landroid/view/ViewRoot;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/ViewRoot;-><init>(Landroid/content/Context;)V

    .line 250
    .restart local v6       #root:Landroid/view/ViewRoot;
    const/4 v8, 0x1

    iput v8, v6, Landroid/view/ViewRoot;->mAddNesting:I

    .line 251
    if-nez p3, :cond_be

    .line 252
    new-instance v8, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v8}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v8, v6, Landroid/view/ViewRoot;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 257
    :goto_94
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v8, :cond_c1

    .line 260
    const/4 v3, 0x1

    .line 261
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 262
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/ViewRoot;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 263
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 276
    :goto_ab
    add-int/lit8 v3, v3, -0x1

    .line 278
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aput-object p1, v8, v3

    .line 279
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aput-object v6, v8, v3

    .line 280
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v7, v8, v3

    .line 281
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_3d .. :try_end_ba} :catchall_3a

    .line 283
    invoke-virtual {v6, p1, v7, v5}, Landroid/view/ViewRoot;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    goto :goto_4f

    .line 254
    :cond_be
    :try_start_be
    iput-object p3, v6, Landroid/view/ViewRoot;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    goto :goto_94

    .line 265
    :cond_c1
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    add-int/lit8 v3, v8, 0x1

    .line 266
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 267
    .local v4, old:[Ljava/lang/Object;
    new-array v8, v3, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 268
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v3, v11

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 270
    new-array v8, v3, [Landroid/view/ViewRoot;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 271
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v3, v11

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 273
    new-array v8, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 274
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v3, v11

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_f6
    .catchall {:try_start_be .. :try_end_f6} :catchall_3a

    goto :goto_ab
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .parameter "view"
    .parameter "required"

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v2, v2

    move v0, v2

    .line 480
    .local v0, count:I
    :goto_9
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 481
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_18

    .line 482
    monitor-exit p0

    move v2, v1

    .line 489
    :goto_14
    return v2

    .line 479
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_15
    const/4 v2, 0x0

    move v0, v2

    goto :goto_9

    .line 480
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 485
    :cond_1b
    if-eqz p2, :cond_28

    .line 486
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v2

    .line 489
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_28
    const/4 v2, -0x1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_25

    goto :goto_14
.end method

.method public static getDefault(Landroid/content/res/CompatibilityInfo;)Landroid/view/WindowManager;
    .registers 5
    .parameter "compatInfo"

    .prologue
    .line 154
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    .line 155
    .local v0, cih:Landroid/view/CompatibilityInfoHolder;
    invoke-virtual {v0, p0}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 156
    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    if-nez v2, :cond_11

    .line 157
    sget-object v2, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 171
    :goto_10
    return-object v2

    .line 160
    :cond_11
    sget-object v2, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_14
    sget-object v3, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 167
    .local v1, wm:Landroid/view/WindowManager;
    if-nez v1, :cond_2a

    .line 168
    new-instance v1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local v1           #wm:Landroid/view/WindowManager;
    sget-object v3, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v1, v3, v0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 169
    .restart local v1       #wm:Landroid/view/WindowManager;
    sget-object v3, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2a
    monitor-exit v2

    move-object v2, v1

    goto :goto_10

    .line 172
    .end local v1           #wm:Landroid/view/WindowManager;
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2d

    throw v3
.end method

.method public static getDefault(Landroid/view/CompatibilityInfoHolder;)Landroid/view/WindowManager;
    .registers 3
    .parameter "compatInfo"

    .prologue
    .line 176
    new-instance v0, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v0, v1, p0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public static getDefault()Landroid/view/WindowManagerImpl;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 6
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 466
    array-length v0, p0

    if-lez v0, :cond_15

    .line 467
    if-lez p2, :cond_9

    .line 468
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :cond_9
    array-length v0, p0

    if-ge p2, v0, :cond_15

    .line 471
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_15
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 184
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "view"
    .parameter "params"

    .prologue
    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 190
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V
    .registers 5
    .parameter "view"
    .parameter "params"
    .parameter "cih"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 194
    return-void
.end method

.method public addViewNesting(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "view"
    .parameter "params"

    .prologue
    .line 197
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 198
    return-void
.end method

.method public closeAll()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, v0, v0, v0}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v4, :cond_7

    .line 383
    monitor-exit p0

    .line 409
    :goto_6
    return-void

    .line 385
    :cond_7
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 387
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_6e

    .line 390
    if-eqz p1, :cond_17

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_6b

    .line 391
    :cond_17
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v3, v4, v1

    .line 392
    .local v3, root:Landroid/view/ViewRoot;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/ViewRoot;->mAddNesting:I

    .line 395
    if-eqz p2, :cond_64

    .line 396
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has leaked window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was originally added here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRoot;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 400
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_64
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    .line 404
    add-int/lit8 v1, v1, -0x1

    .line 405
    add-int/lit8 v0, v0, -0x1

    .line 387
    .end local v3           #root:Landroid/view/ViewRoot;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 408
    :cond_6e
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_70
    move-exception v4

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw v4
.end method

.method finishRemoveViewLocked(Landroid/view/View;I)V
    .registers 9
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 357
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 360
    .local v0, count:I
    sub-int v4, v0, v5

    new-array v3, v4, [Landroid/view/View;

    .line 361
    .local v3, tmpViews:[Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    invoke-static {v3, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 362
    iput-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 364
    sub-int v4, v0, v5

    new-array v2, v4, [Landroid/view/ViewRoot;

    .line 365
    .local v2, tmpRoots:[Landroid/view/ViewRoot;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    invoke-static {v2, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 366
    iput-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    .line 368
    sub-int v4, v0, v5

    new-array v1, v4, [Landroid/view/WindowManager$LayoutParams;

    .line 370
    .local v1, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 371
    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 373
    if-eqz p1, :cond_2b

    .line 374
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 378
    :cond_2b
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 4

    .prologue
    .line 461
    new-instance v0, Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public getRootViewLayoutParameter(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 438
    .local v3, vp:Landroid/view/ViewParent;
    :goto_5
    if-eqz v3, :cond_10

    instance-of v5, v3, Landroid/view/ViewRoot;

    if-nez v5, :cond_10

    .line 439
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_5

    .line 442
    :cond_10
    if-nez v3, :cond_14

    move-object v5, v6

    .line 453
    :goto_13
    return-object v5

    .line 444
    :cond_14
    move-object v0, v3

    check-cast v0, Landroid/view/ViewRoot;

    move-object v4, v0

    .line 446
    .local v4, vr:Landroid/view/ViewRoot;
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    array-length v1, v5

    .line 447
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v1, :cond_2c

    .line 448
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v5, v5, v2

    if-ne v5, v4, :cond_29

    .line 449
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v5, v5, v2

    goto :goto_13

    .line 447
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2c
    move-object v5, v6

    .line 453
    goto :goto_13
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 305
    monitor-enter p0

    .line 306
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 307
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, curView:Landroid/view/View;
    if-ne v0, p1, :cond_e

    .line 309
    monitor-exit p0

    return-void

    .line 312
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling with view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the ViewRoot is attached to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    :catchall_31
    move-exception v2

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    const/4 v3, 0x1

    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 320
    .local v1, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v3, v1

    .line 321
    .local v2, root:Landroid/view/ViewRoot;
    invoke-virtual {v2}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, curView:Landroid/view/View;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewRoot;->mAddNesting:I

    .line 324
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRoot;->die(Z)V

    .line 325
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    .line 326
    if-ne v0, p1, :cond_1c

    .line 327
    monitor-exit p0

    return-void

    .line 330
    :cond_1c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewRoot is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRoot;
    :catchall_3f
    move-exception v3

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method removeViewLocked(I)Landroid/view/View;
    .registers 7
    .parameter "index"

    .prologue
    .line 336
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v1, v3, p1

    .line 337
    .local v1, root:Landroid/view/ViewRoot;
    invoke-virtual {v1}, Landroid/view/ViewRoot;->getView()Landroid/view/View;

    move-result-object v2

    .line 340
    .local v2, view:Landroid/view/View;
    iget v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    .line 341
    iget v3, v1, Landroid/view/ViewRoot;->mAddNesting:I

    if-lez v3, :cond_13

    .line 353
    :goto_12
    return-object v2

    .line 345
    :cond_13
    if-eqz v2, :cond_2a

    .line 346
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 347
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2a

    .line 348
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 351
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2a
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewRoot;->die(Z)V

    .line 352
    invoke-virtual {p0, v2, p1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    goto :goto_12
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    .line 426
    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v1, v4

    .line 428
    .local v1, count:I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 429
    .end local p1
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 430
    :try_start_c
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v3, v4, v2

    .line 431
    .local v3, root:Landroid/view/ViewRoot;
    invoke-virtual {v3, v0}, Landroid/view/ViewRoot;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 433
    .end local v3           #root:Landroid/view/ViewRoot;
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    .line 434
    return-void

    .line 433
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #count:I
    .end local v2           #i:I
    .restart local p1
    :catchall_18
    move-exception v4

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v4

    .end local p1
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catchall_1b
    move-exception v4

    move-object p1, v0

    .end local v0           #config:Landroid/content/res/Configuration;
    .restart local p1
    goto :goto_19
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .registers 7
    .parameter "token"
    .parameter "stopped"

    .prologue
    .line 412
    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v3, :cond_7

    .line 414
    monitor-exit p0

    .line 423
    :goto_6
    return-void

    .line 415
    :cond_7
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v3

    .line 416
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_21

    .line 417
    if-eqz p1, :cond_17

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1e

    .line 418
    :cond_17
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v3, v1

    .line 419
    .local v2, root:Landroid/view/ViewRoot;
    invoke-virtual {v2, p2}, Landroid/view/ViewRoot;->setStopped(Z)V

    .line 416
    .end local v2           #root:Landroid/view/ViewRoot;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 422
    :cond_21
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 9
    .parameter "view"
    .parameter "params"

    .prologue
    .line 287
    instance-of v4, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_c

    .line 288
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Params must be WindowManager.LayoutParams"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_c
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    .line 294
    .local v3, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    monitor-enter p0

    .line 297
    const/4 v4, 0x1

    :try_start_15
    invoke-direct {p0, p1, v4}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 298
    .local v1, index:I
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRoot;

    aget-object v2, v4, v1

    .line 299
    .local v2, root:Landroid/view/ViewRoot;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v3, v4, v1

    .line 300
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRoot;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 301
    monitor-exit p0

    .line 302
    return-void

    .line 301
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRoot;
    :catchall_27
    move-exception v4

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_27

    throw v4
.end method
