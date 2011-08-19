.class public final enum Lcom/amazon/kcp/library/ui/Cover$PageEffects;
.super Ljava/lang/Enum;
.source "Cover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/Cover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageEffects"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/ui/Cover$PageEffects;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/Cover$PageEffects;

.field public static final enum NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

.field public static final enum THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

.field public static final enum THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

.field public static final enum THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

.field public static final enum VARIABLE_THICK_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    const-string v1, "THICK_DENSE_PAGES"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/ui/Cover$PageEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 31
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    const-string v1, "THIN_DENSE_PAGES"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/ui/Cover$PageEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 36
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    const-string v1, "THICK_SPARSE_PAGES"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/ui/Cover$PageEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 41
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    const-string v1, "VARIABLE_THICK_PAGES"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/library/ui/Cover$PageEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->VARIABLE_THICK_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 46
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    const-string v1, "NO_PAGES"

    invoke-direct {v0, v1, v6}, Lcom/amazon/kcp/library/ui/Cover$PageEffects;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->VARIABLE_THICK_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->$VALUES:[Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/Cover$PageEffects;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/Cover$PageEffects;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->$VALUES:[Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/Cover$PageEffects;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    return-object v0
.end method
