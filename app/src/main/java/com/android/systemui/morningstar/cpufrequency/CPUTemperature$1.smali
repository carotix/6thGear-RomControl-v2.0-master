.class Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;
.super Ljava/lang/Object;
.source "CPUTemperature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;


# direct methods
.method constructor <init>(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;

    # getter for: Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z
    invoke-static {v0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->access$000(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z
    invoke-static {v0, v1}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->access$002(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$1;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->isCelcius:Z
    invoke-static {v0, v1}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->access$002(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;Z)Z

    goto :goto_0
.end method
