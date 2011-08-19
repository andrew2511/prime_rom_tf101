.class final Lbp;
.super Ljava/lang/Object;

# interfaces
.implements Lag;


# static fields
.field private static final a:Laq;


# instance fields
.field private final b:Lag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laq;

    invoke-direct {v0}, Laq;-><init>()V

    sput-object v0, Lbp;->a:Laq;

    return-void
.end method

.method public constructor <init>(Lag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp;->b:Lag;

    return-void
.end method


# virtual methods
.method public final a(Laf;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lbm;->a(Ljava/lang/Object;)V

    const-class v0, Lbx;

    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lbx;

    if-eqz v0, :cond_0

    sget-object v1, Lbp;->a:Laq;

    invoke-interface {v0}, Lbx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbp;->b:Lag;

    invoke-interface {v0, p1}, Lag;->a(Laf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
