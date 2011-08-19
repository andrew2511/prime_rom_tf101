.class public Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRATYPE;
.super Ljava/lang/Object;
.source "UiEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACTIVITY_EXTRATYPE"
.end annotation


# static fields
.field public static EXTRATYPE_SLIDESHOW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    const-string v0, "SlideShow Type"

    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRATYPE;->EXTRATYPE_SLIDESHOW:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
