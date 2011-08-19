.class public final enum Ldalvik/annotation/TestStatus;
.super Ljava/lang/Enum;
.source "TestStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/annotation/TestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/annotation/TestStatus;

.field public static final enum LGTM:Ldalvik/annotation/TestStatus;

.field public static final enum TBR:Ldalvik/annotation/TestStatus;

.field public static final enum TODO:Ldalvik/annotation/TestStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Ldalvik/annotation/TestStatus;

    const-string v1, "TBR"

    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestStatus;->TBR:Ldalvik/annotation/TestStatus;

    .line 37
    new-instance v0, Ldalvik/annotation/TestStatus;

    const-string v1, "TODO"

    invoke-direct {v0, v1, v3}, Ldalvik/annotation/TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestStatus;->TODO:Ldalvik/annotation/TestStatus;

    .line 42
    new-instance v0, Ldalvik/annotation/TestStatus;

    const-string v1, "LGTM"

    invoke-direct {v0, v1, v4}, Ldalvik/annotation/TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestStatus;->LGTM:Ldalvik/annotation/TestStatus;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ldalvik/annotation/TestStatus;

    sget-object v1, Ldalvik/annotation/TestStatus;->TBR:Ldalvik/annotation/TestStatus;

    aput-object v1, v0, v2

    sget-object v1, Ldalvik/annotation/TestStatus;->TODO:Ldalvik/annotation/TestStatus;

    aput-object v1, v0, v3

    sget-object v1, Ldalvik/annotation/TestStatus;->LGTM:Ldalvik/annotation/TestStatus;

    aput-object v1, v0, v4

    sput-object v0, Ldalvik/annotation/TestStatus;->$VALUES:[Ldalvik/annotation/TestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/annotation/TestStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Ldalvik/annotation/TestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Ldalvik/annotation/TestStatus;

    return-object p0
.end method

.method public static values()[Ldalvik/annotation/TestStatus;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Ldalvik/annotation/TestStatus;->$VALUES:[Ldalvik/annotation/TestStatus;

    invoke-virtual {v0}, [Ldalvik/annotation/TestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/annotation/TestStatus;

    return-object v0
.end method
