.class public final Lcom/zinio/mobile/android/a/c;
.super Lcom/zinio/mobile/android/util/l;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/l;-><init>()V

    .line 18
    return-void
.end method

.method public static a(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/zinio/mobile/android/a/c;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "issuePackingList.xml"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zinio/mobile/android/a/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/zinio/mobile/android/a/a/j;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, ""

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/zinio/mobile/android/a/c;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/zinio/mobile/android/a/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
