.class public Lcom/layar/adapters/ArSettingAdapter$ArSetting;
.super Ljava/lang/Object;
.source "ArSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/ArSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArSetting"
.end annotation


# instance fields
.field public isOn:Z

.field public prefKey:Ljava/lang/String;

.field public title:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter "prefKey"
    .parameter "title"
    .parameter "isOn"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->prefKey:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->title:I

    .line 27
    iput-boolean p3, p0, Lcom/layar/adapters/ArSettingAdapter$ArSetting;->isOn:Z

    .line 28
    return-void
.end method
