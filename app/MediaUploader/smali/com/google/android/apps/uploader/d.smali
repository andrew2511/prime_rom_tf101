.class public Lcom/google/android/apps/uploader/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/uploader/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 52
    const-string v0, "lh2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/google/android/apps/uploader/g;

    const-string v1, "lh2"

    invoke-static {}, Lcom/google/android/apps/uploader/g;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/uploader/g;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v0, "youtube"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/google/android/apps/uploader/g;

    const-string v1, "youtube"

    invoke-static {}, Lcom/google/android/apps/uploader/g;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/uploader/g;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/google/android/apps/uploader/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/uploader/g;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
