.class Ljava/security/Policy$PolicyDelegate;
.super Ljava/security/Policy;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicyDelegate"
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;)V
    .registers 11
    .parameter "spi"
    .parameter "p"
    .parameter "t"
    .parameter "para"

    .prologue
    .line 85
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/security/Policy;-><init>(Ljava/security/PolicySpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Policy$1;)V

    .line 86
    return-void
.end method
