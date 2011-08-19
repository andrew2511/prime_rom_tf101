.class public final Lcom/zinio/mobile/android/a/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Date;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a/b/t;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/t;->a:Ljava/lang/String;

    .line 47
    :try_start_0
    sget-object v0, Lcom/zinio/mobile/android/a/b/t;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    iput-object v0, p0, Lcom/zinio/mobile/android/a/b/t;->b:Ljava/util/Date;

    .line 54
    iput-object p3, p0, Lcom/zinio/mobile/android/a/b/t;->c:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/zinio/mobile/android/a/b/t;->d:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/zinio/mobile/android/a/b/t;->e:Ljava/lang/String;

    .line 57
    iput-boolean p6, p0, Lcom/zinio/mobile/android/a/b/t;->f:Z

    .line 58
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/t;->b:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/b/t;->f:Z

    return v0
.end method
