.class public Lu/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Lf/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lf/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lu/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lu/i;->c:Ljava/util/Date;

    iput-object p4, p0, Lu/i;->d:Ljava/util/Date;

    iput-object p5, p0, Lu/i;->e:Lf/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lu/i;->c:Ljava/util/Date;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lu/i;->d:Ljava/util/Date;

    return-object v0
.end method

.method public d()Lf/h;
    .locals 1

    iget-object v0, p0, Lu/i;->e:Lf/h;

    return-object v0
.end method
