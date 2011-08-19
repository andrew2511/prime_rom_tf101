.class public final enum Lcom/asus/dmlib/mo/DMAcc$AuthPref;
.super Ljava/lang/Enum;
.source "DMAcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/mo/DMAcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthPref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/mo/DMAcc$AuthPref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/mo/DMAcc$AuthPref;

.field public static final enum AUTH_PREF_BASIC:Lcom/asus/dmlib/mo/DMAcc$AuthPref;

.field public static final enum AUTH_PREF_MD5:Lcom/asus/dmlib/mo/DMAcc$AuthPref;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    const-string v1, "AUTH_PREF_MD5"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/mo/DMAcc$AuthPref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;->AUTH_PREF_MD5:Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    new-instance v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    const-string v1, "AUTH_PREF_BASIC"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/mo/DMAcc$AuthPref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;->AUTH_PREF_BASIC:Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    sget-object v1, Lcom/asus/dmlib/mo/DMAcc$AuthPref;->AUTH_PREF_MD5:Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/mo/DMAcc$AuthPref;->AUTH_PREF_BASIC:Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    aput-object v1, v0, v3

    sput-object v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;->$VALUES:[Lcom/asus/dmlib/mo/DMAcc$AuthPref;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/mo/DMAcc$AuthPref;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/mo/DMAcc$AuthPref;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/asus/dmlib/mo/DMAcc$AuthPref;->$VALUES:[Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    invoke-virtual {v0}, [Lcom/asus/dmlib/mo/DMAcc$AuthPref;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/mo/DMAcc$AuthPref;

    return-object v0
.end method
