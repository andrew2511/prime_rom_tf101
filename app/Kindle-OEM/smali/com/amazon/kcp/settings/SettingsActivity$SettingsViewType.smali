.class final enum Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;
.super Ljava/lang/Enum;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

.field public static final enum SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

.field public static final enum SINGLE_LINE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

.field public static final enum TWO_LINES:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

.field public static final enum TWO_LINES_CHECKBOX:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    .line 76
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const-string v1, "SINGLE_LINE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SINGLE_LINE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    .line 77
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const-string v1, "TWO_LINES"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    .line 78
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const-string v1, "TWO_LINES_CHECKBOX"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SINGLE_LINE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->$VALUES:[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;
    .locals 1
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->$VALUES:[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    return-object v0
.end method
