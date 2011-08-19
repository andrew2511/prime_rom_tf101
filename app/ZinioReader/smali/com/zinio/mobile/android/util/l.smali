.class public abstract Lcom/zinio/mobile/android/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/io/File;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected static a(Z)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    .line 90
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/zinio/mobile/android/util/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    sget-object v0, Lcom/zinio/mobile/android/util/l;->b:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/zinio/mobile/android/util/l;->c:Ljava/io/File;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 86
    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move-object v0, v1

    .line 90
    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/zinio/mobile/android/util/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    sput-object v0, Lcom/zinio/mobile/android/util/l;->a:Ljava/lang/String;

    .line 82
    sput-object v1, Lcom/zinio/mobile/android/util/l;->b:Ljava/lang/String;

    .line 83
    sput-object v2, Lcom/zinio/mobile/android/util/l;->c:Ljava/io/File;

    move-object v0, v2

    goto :goto_1
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    array-length v1, p0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 39
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 47
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
