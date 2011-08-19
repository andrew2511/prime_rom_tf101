.class Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$ViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheItem"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$ViewCache;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->this$1:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    .line 152
    iput p3, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mPosition:I

    .line 153
    iput-wide p4, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mId:J

    .line 154
    return-void
.end method
