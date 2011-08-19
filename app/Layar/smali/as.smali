.class public final Las;
.super Lao;


# static fields
.field private static final a:Las;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Las;

    invoke-direct {v0}, Las;-><init>()V

    sput-object v0, Las;->a:Las;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lao;-><init>()V

    return-void
.end method

.method static h()Las;
    .locals 1

    sget-object v0, Las;->a:Las;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Appendable;Lad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    instance-of v0, p1, Las;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Las;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
