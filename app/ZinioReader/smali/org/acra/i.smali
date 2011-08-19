.class final Lorg/acra/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private synthetic c:Lorg/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lorg/acra/i;->c:Lorg/acra/ErrorReporter;

    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/i;->a:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/i;->b:Z

    return-void
.end method

.method public constructor <init>(Lorg/acra/ErrorReporter;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lorg/acra/i;->c:Lorg/acra/ErrorReporter;

    .line 95
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/i;->a:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/i;->b:Z

    .line 96
    iput-boolean p2, p0, Lorg/acra/i;->b:Z

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lorg/acra/i;->a:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lorg/acra/i;->c:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/i;->c:Lorg/acra/ErrorReporter;

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/i;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/acra/i;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method
