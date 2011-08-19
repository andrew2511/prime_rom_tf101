.class final Lcom/google/android/music/MusicUtils$2;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/google/android/music/MusicUtils$QueryCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$projection:[Ljava/lang/String;

.field final synthetic val$replyHandler:Landroid/os/Handler;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$sortOrder:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/music/MusicUtils$QueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/music/MusicUtils$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/music/MusicUtils$2;->val$projection:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/music/MusicUtils$2;->val$selection:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/music/MusicUtils$2;->val$selectionArgs:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/music/MusicUtils$2;->val$sortOrder:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/music/MusicUtils$2;->val$replyHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/google/android/music/MusicUtils$2;->val$cb:Lcom/google/android/music/MusicUtils$QueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/MusicUtils$2;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/MusicUtils$2;->val$projection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/MusicUtils$2;->val$selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/MusicUtils$2;->val$selectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/MusicUtils$2;->val$sortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$2;->val$replyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/MusicUtils$2$1;

    invoke-direct {v1, p0, v6}, Lcom/google/android/music/MusicUtils$2$1;-><init>(Lcom/google/android/music/MusicUtils$2;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method
