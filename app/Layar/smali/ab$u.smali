.class Lab$u;
.super Ljava/lang/Object;

# interfaces
.implements Lay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lay",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lba;


# direct methods
.method synthetic constructor <init>(Lba;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lab$u;-><init>(Lba;B)V

    return-void
.end method

.method private constructor <init>(Lba;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab$u;->a:Lba;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lav;)Lao;
    .locals 1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lab$u;->a:Lba;

    invoke-virtual {v0, p1}, Lba;->a(Ljava/lang/Long;)Lao;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lab$u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
