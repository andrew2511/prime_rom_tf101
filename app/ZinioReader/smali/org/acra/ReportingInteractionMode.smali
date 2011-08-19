.class public final enum Lorg/acra/ReportingInteractionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/acra/ReportingInteractionMode;

.field public static final enum NOTIFICATION:Lorg/acra/ReportingInteractionMode;

.field public static final enum SILENT:Lorg/acra/ReportingInteractionMode;

.field public static final enum TOAST:Lorg/acra/ReportingInteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 42
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    .line 47
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "TOAST"

    invoke-direct {v0, v1, v4}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/acra/ReportingInteractionMode;->ENUM$VALUES:[Lorg/acra/ReportingInteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/ReportingInteractionMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/acra/ReportingInteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/ReportingInteractionMode;

    return-object p0
.end method

.method public static values()[Lorg/acra/ReportingInteractionMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->ENUM$VALUES:[Lorg/acra/ReportingInteractionMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/acra/ReportingInteractionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
