.class public Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRAVALUE;
.super Ljava/lang/Object;
.source "UiEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACTIVITY_EXTRAVALUE"
.end annotation


# static fields
.field public static EXTRAVALUE_SLIDESHOW_CURRENT:Ljava/lang/String;

.field public static EXTRAVALUE_SLIDESHOW_FIRST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    const-string v0, "First"

    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRAVALUE;->EXTRAVALUE_SLIDESHOW_FIRST:Ljava/lang/String;

    .line 337
    const-string v0, "Current"

    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRAVALUE;->EXTRAVALUE_SLIDESHOW_CURRENT:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
