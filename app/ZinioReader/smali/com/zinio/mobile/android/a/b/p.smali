.class final enum Lcom/zinio/mobile/android/a/b/p;
.super Lcom/zinio/mobile/android/a/b/v;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/a/b/v;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
