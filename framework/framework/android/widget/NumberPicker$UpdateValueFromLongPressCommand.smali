.class Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateValueFromLongPressCommand"
.end annotation


# instance fields
.field private mUpdateStep:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3
    .parameter

    .prologue
    .line 1638
    iput-object p1, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->mUpdateStep:I

    return-void
.end method

.method static synthetic access$800(Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->setUpdateStep(I)V

    return-void
.end method

.method private setUpdateStep(I)V
    .registers 2
    .parameter "updateStep"

    .prologue
    .line 1642
    iput p1, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->mUpdateStep:I

    .line 1643
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mValue:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)I

    move-result v1

    iget v2, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->mUpdateStep:I

    add-int/2addr v1, v2

    #calls: Landroid/widget/NumberPicker;->changeCurrent(I)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;I)V

    .line 1647
    iget-object v0, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$UpdateValueFromLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2400(Landroid/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1648
    return-void
.end method
