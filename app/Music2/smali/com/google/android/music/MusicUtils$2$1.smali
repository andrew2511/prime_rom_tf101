.class Lcom/google/android/music/MusicUtils$2$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicUtils$2;

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicUtils$2;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$2$1;->this$0:Lcom/google/android/music/MusicUtils$2;

    iput-object p2, p0, Lcom/google/android/music/MusicUtils$2$1;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$2$1;->this$0:Lcom/google/android/music/MusicUtils$2;

    iget-object v0, v0, Lcom/google/android/music/MusicUtils$2;->val$cb:Lcom/google/android/music/MusicUtils$QueryCallback;

    iget-object v1, p0, Lcom/google/android/music/MusicUtils$2$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lcom/google/android/music/MusicUtils$QueryCallback;->onQueryComplete(Landroid/database/Cursor;)V

    .line 555
    return-void
.end method
