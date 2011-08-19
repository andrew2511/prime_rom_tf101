.class public final enum Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
.super Ljava/lang/Enum;
.source "LawmoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum Client_Error:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum Fully_Lock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum Partially_Lock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum UnLock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum User_Cancelled:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum Wipe_Device_Data_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

.field public static final enum Wipe_Operation_not_performed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "Operation_Succeeded"

    const/16 v2, 0x4b0

    invoke-direct {v0, v1, v4, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "Client_Error"

    const/16 v2, 0x578

    invoke-direct {v0, v1, v5, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Client_Error:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "User_Cancelled"

    const/16 v2, 0x579

    invoke-direct {v0, v1, v6, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->User_Cancelled:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    .line 5
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "Fully_Lock_Device_Failed"

    const/16 v2, 0x57a

    invoke-direct {v0, v1, v7, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Fully_Lock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "Partially_Lock_Device_Failed"

    const/16 v2, 0x57b

    invoke-direct {v0, v1, v8, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Partially_Lock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    .line 6
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "UnLock_Device_Failed"

    const/4 v2, 0x5

    const/16 v3, 0x57c

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->UnLock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "Wipe_Device_Data_Failed"

    const/4 v2, 0x6

    const/16 v3, 0x57d

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Wipe_Device_Data_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    .line 7
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    const-string v1, "Wipe_Operation_not_performed"

    const/4 v2, 0x7

    const/16 v3, 0x57e

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Wipe_Operation_not_performed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Client_Error:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->User_Cancelled:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Fully_Lock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Partially_Lock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->UnLock_Device_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Wipe_Device_Data_Failed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Wipe_Operation_not_performed:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->$VALUES:[Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->code:I

    .line 13
    return-void
.end method

.method public static getLawmoStatus(I)Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    .locals 5
    .parameter "resultCode"

    .prologue
    .line 19
    invoke-static {}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->values()[Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 20
    .local v3, s:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    iget v4, v3, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->code:I

    if-ne v4, p0, :cond_0

    move-object v4, v3

    .line 24
    .end local v3           #s:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    :goto_1
    return-object v4

    .line 19
    .restart local v3       #s:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v3           #s:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->$VALUES:[Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->code:I

    return v0
.end method
