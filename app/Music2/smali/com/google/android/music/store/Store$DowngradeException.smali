.class Lcom/google/android/music/store/Store$DowngradeException;
.super Ljava/lang/RuntimeException;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DowngradeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final mFilepath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filepath"

    .prologue
    .line 2037
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2038
    iput-object p1, p0, Lcom/google/android/music/store/Store$DowngradeException;->mFilepath:Ljava/lang/String;

    .line 2039
    return-void
.end method


# virtual methods
.method getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/google/android/music/store/Store$DowngradeException;->mFilepath:Ljava/lang/String;

    return-object v0
.end method
