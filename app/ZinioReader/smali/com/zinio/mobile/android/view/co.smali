.class public final Lcom/zinio/mobile/android/view/co;
.super Lcom/zinio/mobile/android/view/library/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/g;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030026

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030027

    goto :goto_0
.end method
