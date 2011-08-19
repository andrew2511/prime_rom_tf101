.class public LaA/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lf/h;

.field private final b:Ljava/lang/String;

.field private final c:Lf/h;

.field private final d:Lf/h;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/h;Lf/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaA/e;->a:Lf/h;

    iput-object p2, p0, LaA/e;->b:Ljava/lang/String;

    iput-object p3, p0, LaA/e;->e:Ljava/lang/String;

    iput-object p4, p0, LaA/e;->f:Ljava/lang/String;

    iput-object p5, p0, LaA/e;->d:Lf/h;

    iput-object p6, p0, LaA/e;->c:Lf/h;

    return-void
.end method


# virtual methods
.method public a()Lf/h;
    .locals 1

    iget-object v0, p0, LaA/e;->a:Lf/h;

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, LaA/e;->d:Lf/h;

    return-object v0
.end method

.method public c()Lf/h;
    .locals 1

    iget-object v0, p0, LaA/e;->c:Lf/h;

    return-object v0
.end method
