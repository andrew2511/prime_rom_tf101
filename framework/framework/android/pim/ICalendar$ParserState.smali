.class final Landroid/pim/ICalendar$ParserState;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserState"
.end annotation


# instance fields
.field public index:I

.field public line:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/pim/ICalendar$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/pim/ICalendar$ParserState;-><init>()V

    return-void
.end method
