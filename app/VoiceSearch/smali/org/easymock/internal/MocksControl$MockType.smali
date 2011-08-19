.class public final enum Lorg/easymock/internal/MocksControl$MockType;
.super Ljava/lang/Enum;
.source "MocksControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/easymock/internal/MocksControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/easymock/internal/MocksControl$MockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/easymock/internal/MocksControl$MockType;

.field public static final enum DEFAULT:Lorg/easymock/internal/MocksControl$MockType;

.field public static final enum NICE:Lorg/easymock/internal/MocksControl$MockType;

.field public static final enum STRICT:Lorg/easymock/internal/MocksControl$MockType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lorg/easymock/internal/MocksControl$MockType;

    const-string v1, "NICE"

    invoke-direct {v0, v1, v2}, Lorg/easymock/internal/MocksControl$MockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/easymock/internal/MocksControl$MockType;->NICE:Lorg/easymock/internal/MocksControl$MockType;

    new-instance v0, Lorg/easymock/internal/MocksControl$MockType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lorg/easymock/internal/MocksControl$MockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/easymock/internal/MocksControl$MockType;->DEFAULT:Lorg/easymock/internal/MocksControl$MockType;

    new-instance v0, Lorg/easymock/internal/MocksControl$MockType;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v4}, Lorg/easymock/internal/MocksControl$MockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/easymock/internal/MocksControl$MockType;->STRICT:Lorg/easymock/internal/MocksControl$MockType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/easymock/internal/MocksControl$MockType;

    sget-object v1, Lorg/easymock/internal/MocksControl$MockType;->NICE:Lorg/easymock/internal/MocksControl$MockType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/easymock/internal/MocksControl$MockType;->DEFAULT:Lorg/easymock/internal/MocksControl$MockType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/easymock/internal/MocksControl$MockType;->STRICT:Lorg/easymock/internal/MocksControl$MockType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/easymock/internal/MocksControl$MockType;->$VALUES:[Lorg/easymock/internal/MocksControl$MockType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/easymock/internal/MocksControl$MockType;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lorg/easymock/internal/MocksControl$MockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/MocksControl$MockType;

    return-object p0
.end method

.method public static values()[Lorg/easymock/internal/MocksControl$MockType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/easymock/internal/MocksControl$MockType;->$VALUES:[Lorg/easymock/internal/MocksControl$MockType;

    invoke-virtual {v0}, [Lorg/easymock/internal/MocksControl$MockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/easymock/internal/MocksControl$MockType;

    return-object v0
.end method
