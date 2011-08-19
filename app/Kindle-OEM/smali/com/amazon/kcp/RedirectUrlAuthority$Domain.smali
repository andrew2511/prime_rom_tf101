.class public final enum Lcom/amazon/kcp/RedirectUrlAuthority$Domain;
.super Ljava/lang/Enum;
.source "RedirectUrlAuthority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/RedirectUrlAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/RedirectUrlAuthority$Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

.field public static final enum KINDLE_STORE_PRE_PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

.field public static final enum PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;


# instance fields
.field public final urlDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    const-string v1, "PROD"

    const-string v2, "www.amazon.com"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    .line 27
    new-instance v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    const-string v1, "KINDLE_STORE_PRE_PROD"

    const-string v2, "kindlestore-preprod.amazon.com"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->KINDLE_STORE_PRE_PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    sget-object v1, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->KINDLE_STORE_PRE_PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->$VALUES:[Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "urlDomain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->urlDomain:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/RedirectUrlAuthority$Domain;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/RedirectUrlAuthority$Domain;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->$VALUES:[Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    invoke-virtual {v0}, [Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    return-object v0
.end method
