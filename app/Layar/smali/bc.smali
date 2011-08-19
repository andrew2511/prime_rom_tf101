.class final Lbc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lbk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lbc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbc;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lbk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbk",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc;->b:Lbk;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbc;->b:Lbk;

    invoke-virtual {v0}, Lbk;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
