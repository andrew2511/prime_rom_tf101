.class public final enum Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;
.super Ljava/lang/Enum;
.source "VdmLawmo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LawmoHandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

.field public static final enum FactoryReset:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

.field public static final enum FullyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

.field public static final enum PartiallyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

.field public static final enum UnLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

.field public static final enum Wipe:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;


# instance fields
.field private handlePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    const-string v1, "PartiallyLock"

    const-string v2, "Operations/PartiallyLock"

    invoke-direct {v0, v1, v3, v2}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->PartiallyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    .line 22
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    const-string v1, "UnLock"

    const-string v2, "Operations/UnLock"

    invoke-direct {v0, v1, v4, v2}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->UnLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    .line 23
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    const-string v1, "FactoryReset"

    const-string v2, "Operations/FactoryReset"

    invoke-direct {v0, v1, v5, v2}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FactoryReset:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    .line 24
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    const-string v1, "FullyLock"

    const-string v2, "Operations/FullyLock"

    invoke-direct {v0, v1, v6, v2}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FullyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    .line 25
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    const-string v1, "Wipe"

    const-string v2, "Operations/Wipe"

    invoke-direct {v0, v1, v7, v2}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->Wipe:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->PartiallyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->UnLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FactoryReset:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FullyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->Wipe:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->$VALUES:[Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->handlePath:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->$VALUES:[Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->handlePath:Ljava/lang/String;

    return-object v0
.end method
