import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: const LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMWFRUXGBgWFhgWFxgYGhcfFxoZGhgXGBcYHSggGBolHxgYITIiJSorLi4vGB8zODMsNygtLi0BCgoKDg0OGhAQGi0mHyUtLS0tNS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMQBAgMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAECAwUGBwj/xAA/EAABAgQEAwYEBgEDAwQDAAABAhEAAyExBBJBUQUiYQYTMnGBkaGx0fAUQlLB4fEHM2KCI5LSFnKiwhVTVP/EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAApEQACAgICAgICAQQDAAAAAAAAAQIRAyESMUFRBBNhcZEFImKhFDJS/9oADAMBAAIRAxEAPwD04CHAhhExHWc4gIdoUSAgsBmh2hwIkBCsZBodom0JoVgRaFlibQ7QWBDLDtEmh2hWBBodok0O0FhRBodok0O0A6INDtEmh2hBRBodok0KCwoi0JonCgGRaE0ShQARaE0PCgAaE0PCgAaE0PCgAZoYiJQoAK2h4dxCgsKAgIkIGlYhRZ6FnILU6QMniyEraYVJBIDqSyUk0quzEkN1MJZLBwo1BExFfeJZ8wbdxFiC9RUdIqyR4cQhEhAMTQoeHAhANDw7QmgGNDtDwoAGaHaFDwgGh4TQ7QAM0PDwoAGhQ8KABoTQ8KABmhmiUKACLQ0TaGaACMKJNCaACLQmiTQmgAiaVjEx/FlVSgFJ3N/SNHiM/KAP1FvYOfgDGJi1OpiHNP6cV1jnzTa0ma44rtgp4pN/WfhCiyapAJHd2JH5tPWHjht/+jel6CJS1qfMUhgCH5Sp7izAilPpGV2olqVhJyQCDlzaKBAqRTVhCGMdLAkyykpzI8UovQqQfE24qNRWmlwriCJ6FIZloVkmNu1FJ3Qq4Mej1sw70cj/AI7xuXDz85T3aOYbg5SVABrFh6vAnDu08yRiFspXdLWt0BlBOcllIFnBL9WjCwilSVTZSjlBdC9wziw/5D1js5vCkTUSZslhQvTMAA7NuogJHvG7pO/Zl2qO44PijNkoWoBKykFSRoTpWDmjmMHOZElaKgEEEFnCgQXGo5gf6jocDixMS9i5HttEchuNF7Q7RICHaHYiDQ7RNoTQrAg0O0TaE0FgRaE0SaHaCxkGh2iTQmgsCLQ7RJoTQrCiLQmiTQ7QWFEGhNE2hNBYUQhNE2hNBY6INCaJtCaCwog0Jom0JoLCiDRCdNSkOogDrFxEcvisQFqKgUKq1KkN0u3kR6RE5uK0VGNkOK8Q7wsizsmlaXbbzgWRNWgKL1SwZutyfjGi8vIHWElxYMK0CCSSf6tEQnmLKBah5h06VjlqV22bKqpGccW9SlBetj9YUUTZ07McsuWQ5YuBTSmcfIQ0Z/XL2O0crN7QSwZalkpUSUlaaAgEMV0L3JHmfON7hfE5cx1pmpCtSLKaltRbaOFlFGIQ6SAovnljxBqlaE/mB2EAow83DzGdaUqOU5R6ghwRp5s8ejRzWdH2l4LOE1U3LmC1FRKet4q7P8em4Y5Qc0sllIPWhI/SfhG5wbjJKQCcxI5nAqf1Aag3a4ZnsTTxLBy8QokDIsNmLFlPr1F/pFKXhicfKO+/CJEtKByhOUJI/wBrN52iMgFAykgKvQMCxoRsWZxFHDsalctKSoFSQlKmq5CQ/X94sQvM4VUOG/UPusZGhqyMcHCVsCWAbc6HaD2jmZpccxFG5hS9iW8oP4fjFJZKqgC2o3D/AHaKslo2MsPlimVikqDp/rpFgmUsYAok0JoYLG8SSoGAQzQ7Q5ihazCHRdCJilK2u8OuaN4LHRbDtA9K6xNDjcwWKi1oTRBa2rEe/wChgCi1oTRT3+wMWJeAKJNCMOBEFShBYUJSwNYr/EB2hJkAXNIFxE5CSWdZ2Tp5q0hOSXY0g0TBAmI4klNuY7A/vpGLiMWpblSsqf0gsPXcxTNIa7AhuppptEc2+iuITjuNqUClIy08yXt6eUAyMOwDF32AF9m9IpEhi7KLgCrt0q7bbRejHpCsieUAcygLf7UgxHJMqiyfhwkP+kZq1Zr+sZ2IlBOZTgOz+t6a7N1i3GrIVyghy/6g1TmerADTcQDh8MJkwFRo7l3tYCl1Gp/uJXYyAxQ//ZL9lfsloUaK5+FBI7l/aFFWKjwuSoghSVFJFQQSCOoIjpR2rXMkmRPCVOQnvSl1IS4c5aBRDAg0NOrxjLwruuSCUgsxZxR6j39orQpJBCgx06R2Umc9tGxwLFzF4hEtBd1EpelACou24T7gPvHT/iSVBKSAopKg7cpDmhPKoH08hHAyFLlqEyUqosoFlDf4GOy4F2pkqQmVPlpTMYS+9PhIDkFexBIG16iJkios0MLxbnyzAETHDLRzJUN1J1FLisbc/FTUUWBoHSogA05WLkHT1gPDdmJapMkFWd0pfIeWpKlBLUbmYHpFmLwwTLKu/mABWUpWnvArmCWYh9REWiqYLgeP4iUpQmkTEsChinOctSG1uflG5w7tEhYQrKQVAEgVy1Slq6OoexMZCeE4iUSqUy0huU6hWidKOBU6+bCIxMtZUkp7tf5kkZVJO7C4ppuesDkmLaO4lT81ZSwKX1DEliD6/YjQkYxTf9RLtV0m4Y1Y+UcB4eZExloVyAVLGp8w4DjppB47Tr5VTEy1FQCk3SdXABtBXoLOsm8Rlg3KTsQX/n0iyXxFK/Cofv7Rgp4rh55AzqlTWtVjsQWYj1EVT0qSo51EUUUqd05g2W7t+anSGhNnVJnG59IsGJD2jC4dxJMxyDe4/SfzJ6RoJpeBqgTD5k2rGIg9IDOLADvT794oPEVEsGA60hUOzUTObp5/SKDxA1cj0gTvXdyPv5xCXXwh2NIBWGysYdvWL04sxmSpwSWP9QQmYDa0DCwv8SrcRE4g7wDPxAD6ttAk2XOIEzMUgVUlqXoCSNBXWx2iZSopKzYGJUaP8IAxHFEBQT3jkpKqGjAs5I6lox+ITZvdBRmKACh4WSVeIDmO9zRtozsDKSEqSQ4ADbKvYe8YS+RWki1j9mxjOIUu9Ks5io41eVknlIFNLDVoy5ih3lKDUCmuo2vBeQJllSjRAc9dkjrYRnNy7fZaS6RamcsCgT5s7+bw/fEAEUpej/AU3hjiE/lbqAX9+sR7kliXY2G/8fOMvtvUSuPstM4lDFy55XuN1H7MCInZgS7gelXZzqG2i7FHJdi4o2mlvYRGRKcmjhIoN7kCHcqFoulS+QGoJDUuXrrocotEMXheVgpQUS4CWqNXBB5YKlFcweHLMAS4NQkkPlNbkewbetYw+JDkJSd2Z61uflGjk4qt/wACqwJHAaC//ev6wo1UYfEEDkHsiFEX+JDr9HisqcZJUU5Tm8T7ByDSr1MWibKWGmJCFMD0P/KhSb1HtFGEwypqQpHMqjhIfcglnyuz9DFa5DMkg/qpdt/Jo6VJoyqzRl4KQzFJSSHzIOYqH6mJZXo3/G0WYXgsmeA04S10DrS1dllLjyN6jzjKWmmZIIJJIIJobhty/wABGjwztIJS2mFSDVJmSwCC+i5ZFve0axyN9EuKCsIMbw9YC0KVKJFEqdKmUFOg/lNOjx1+F4sjE4da5bKCVZildMvMl3G9aR5vxDjhMw5VkyzQCuUAWYOaWPR6Rq8Nn5FZ0qzIWOYBsxB11E1ILuxcecVOuxRbPR+HTQZjJIfKlZ1ZiGrq7t/UV9puEJxJRlISuUQSoX5lAlJ9HIvGAjtGUglKA5I50kFIY0O6R0PpCwHHwgr70PnAdSS4Gr7UMZKWy2E47hBStCHd8wJVQJyhNc21eohT+HzUpIWkKQ3Nma1R4twzvpT02MXjgtSChKlImFaDRgXSH8TPb4GNLishRw5CWSojKCakAv7nz3ikxcTz5JyHMMypbFmZSk1Ys9FpcNQv7V1sFjM7FD0YKRdKuoH5v2LwHxThwlz5MmUlUxMuXQg8oLspybks7aFSWEHTuHzZSkKlsVlZSBYkhJUkOaElLiuo9tGzPiKTyAkeTbgBq/7n3ja4fxFgUChuTSvR/wBo5NfaZM5T5UomKArXKo2OYPQmnsI0cFPKhUFJGhr7HWLb1sn9HTKVqC+7tT41i2XLUtzlNPIN1YxgJLXMFSeIrAJDqZgX60HWJsZ0kmUlKmALs76e28Gy5wag60+cc8O0Jy1FGoGqPMxUjtDMF0JO7Ag/OM3JGiRuTMHmUVeF9B839Ib8MDqWA3/aMs9qLOhXlTzuoROXxUqBCHzmwJD+ySft4OaCjRMpCT0HMdyze1WgHEcTM5GTwZwzKGqgKUuLj3EZqcLOSrvFqUVAEk/lY6VqRR7flEXcMKSlJmDNMzFSKlOUFiXcCgoabNHNLJbNYxpFGJwixIV3hAlhTJepILCjlh4tBodoIlNlS6MoKaZQ46gK8w9HvfcvFKlKSokKWkZUpN/FmCikmhZ2PRJ3jOmpUJiQFsmUjIEGuXMmz9ABa3rESdDQsUlKRMzkBVcrEVSAGYUergROTMllKc8wAqKUpFFBKlVYgXo1fm0Z+GQqYgqU5cvWyb5QCXahdoeYe9LKSKEAFg9A4Zg+ppGcsqfaKUTSRgVhLKyKUSQ4o5u7NSgO2sHS1IRLJMs5gPzOxfXb96RlTZYRyEktvZzd4qn8QShSAogFZEtAU5dRdgPd/fSIWRKWlv8AkdaDJcvvKJaxpV7i2g0gnDryOEgKU5CSku5LFjS1j/UC/i2RNlIWnvUunwuElaQoGwKhV2erRLA4bIn8zAcqlEBgwfoSea28bqXh9k0MvDziokk5jV3I16GmkCcVxa8NImLlpK1pSSgKJAUp6fbxsYTGMDnpbmUaHLV/9xJJt7xhYkjFuVKIlhXiQH7zYOQyU60H1iUoR2h7G4XxOdMkypisTJSpctCiBJnUKkgkf6nWFFyOHKAATJASKD/UtprCi/tXr/QqPDuFcSmSCchbMGNAXFdx1MdpwDiczFqTLzplqCTkBQkA1SEigDhROri+sef98Wb56asNolIUrMFIdwXDaR1uCezBSo7fFcAmJyd6KKGUFnKaUBtUZbHakc/xzhi5U1IUlRCsr1apSCUB3ennHS9n+04nJMqekuEgIUE5g4VdWtiz7QdicGoTUAPlL0NnUFXb9jq2sY8uL2aUmtHnGIlkOQGB001ptaNbs9xwICZMxKTLcsbEEm/X5xr8U4U2ZBaxIIprWl2cxyMzDqRMKGJKVNS52bzEaRkpqiGnFnos7hQPPLWqtXQSX9uavURnlJsQmty2Vw+qWb3Ai/A4eYEpUBlDB2IN2oqoPwgucpRJSpSi36nV86iOblRpVl2D4xNS2YZwlWZOZzVmcVGjhnjf/wDVIUKyleTuN3F9a+kc5IwQfmJqaMKWo+vq0SnYBYNC46HreGpMKNlXFEqmd5lNElIe6RsCPIVZ6CKsZxKYoJLJDzUqoQ6S75qsWFR5ExgLlEXf7/qKUqLpFeZxUHQOX29YuORkuJmS8DNJZMtRd2oWYOTU9AY2OH/iEtnHLqVKYgVq9et42uCcGzISubndtAEg+hc+0bfcyZCTRzlzczqJJs5Nw+0XL5L6omOJPdmNhEq/Opx93/uCk4kJBb1bpGeufmLnQi9A7jS0P3oy5TWwcEVe483jNzk+y1FIOw80lycqBYElzcvQdPnCLqWEy1d4aOwZr1f2+MDKlqNBludz7+kH8M4gmXKWQS2YgMWU5AIzNahBvYxGxkFIUkc6gCGpQuCLuKekanZQp70qOgpTVRo3mH94wZhDu4v/APV6ekdjwDDCXJK2AJDmrvso7UanlDi9gTnoKnsrMSGcsr8rNokU+cZuMwRQCU5iVLyrZsvWorloB6EQcEZlIyTSlmNK1ptpS3WNRIUiiRysVOWZ68pewer9IEk7Do5zAoKEqQSyTMzsGZFEj4MKQPLlpzqACmNSol6sdLkNq1No6HFlCgrMPIswdrvYCAEYQUIvbcHc6/zGE4u67LTMvBrXldSCAFKCAQzA2o3SCc4SoKoFCjDQ7kAU094OmiYKBREshySUl30DXP8AZiiVJM1dTT8x2bbekYtO6RSBUJBJNaOSQCTSr7mPMe3XaQHFIOEn5kIBS6TUqUKnKpqjwtrHeds+1cnBJMgS52aZL5VoSgsCSMzlQKC4oSPK0eGTpkwTDMWFBRJLqCgSS9yS5fUu9Y68GFR2+zOcvB0vZHic0YnMQpSphHKgyAparhLzS4SXIofzNrHtGLR3aQucHUWZD2f8pIoLHVqXjwTg2HXMmPLlZyFOxSoqzKL2Rc9SRoxePSuyM2YlHdLmTZ6iU86pc4olKTTIgzEhIZIaj1UejvLCPbCLfR2Bw6pqQrwqZlJIIZ9LaP8AdIGGDZJVMdLUAZ33NFW8t41uFiYmhRy/lLNtyqCi4Luc2u0LiwUUgpGVSalFVE1oR84yyYYpcilJ9GIqWp6ENpX+YUWCes1dNa1aFHP/AG/kvZ4IVg6B/Z/aJBhYlJ1H8iLsRww3B++kC92oNR/No9VS/Jy0H4PiBl7t0Zv7jdkceTMyoWopYghQOVm2Y8rUjlUBn9XBhwka0MDUZdhtdHoquJJXlSVIV+ULUQ5BUkEqNRqDWtDWDuH4XDiYZilIKwGJUzBswDP5qH/ER5zgeG94fEGuS/7R1PAuwxngKVMIQ5D7kB2T06wfR/kL7fwaHFOO4aUp0TMxH5UB3/8AcpmMZw7bSWIMlTeafsRv4HsVhebkKsq2JWoihfQUt+0Ez+G4aU8nDSEGaQoFYDlNWcKLmz0hr48AeRnFze0ylf6clR0qS3w84uwsris0BUsZE6E5R6spyfNo7bhfZEBjMokOyfZqx0a8LG8PjwXgyllkeYHshi1kGdi2rUJzH2sN9I3+G8HTJS2ZSzqV1f0s0dQvCxRMwsbrHBeDJzk/JnqnEhiabRxnb/GTQtCEZ0ysotQKNXFPlHdrw0UqkQ544yCMnE8v4NxZctXMSpJuCfjHdYQBaQoHQMfSpYC9YKVweQVZjKQ/lGhw/ByhTKAOlI55/FT2aLM0AyJSRR9g9dKuaVeNJWEl5EoTOQovQnML6CnLSl6/M08NQdD6GLZOBlgoChQlg9yVUHnUiMJYEk3ZpHLJuqHwHARMQDmZIqbOopIdLgOwI2rSI4vGmWwpmU45a3qC2pt7bQTKkTJSwgEqR4lPYE3SPWIY3h0talLSVUajOdAQCCNjX+Y43TWu0dJk8OnKUcr0IAy5nNyxzXFvizR0snEtLTnIUoDKE6FgQpRfet4yZsyXKB7sMWLG75QNdBeAcJKmKACyctXehL3HS5jLnx6Kqzp5GNCkKcpewr063vAmIx7uE66szDYQIUt8SwHzMKUA7s9A2gr1iXmlJUPikTEpayxoAfEbDd9zCx2MTLlulJISCXAd2qSB+Y9IUxSl3VTawbZhAfEkK7pWVJUWIYLEs2qQs+EjeI5eF/I6PIe2Ha5eIqhS1yz4kzZScg/SAanMAVB3Gsc3JUtTBiUpVQIyqCXBNBVwA52vGnO4hJC1KmZ1zLBQASoMSwWUkpWqg5gGOaMnF4zvFB+VItlAT6kC6tyXJj04RSVJHO2anCeJd3lyqnVmJBAmLSEuSApwQMxHUX6R6FwLG4fNLzoxs9YUMpQuYZMosCSSlbKZReo16GPNuGYtfdKky1HKpQUod5kbmAQpiGJcJPK9I6Ps/i50oJVIkYmYos4QuSZSrDLRCixIqpwbCJnroaPY53EssxSkjNQBLkkAsXUH820hk8RQ3OklTF7EKJq5JDizMKMTGBwPHTpiVGfhVSFv+ZSFDyDHM+tUgecHrJbrHBLNNPZsooQxCtwPIQ0VsenvDxhyl7KpHjvdrAGRQJ2dv7irES1CpSzgdN9/T3ipc0ppVxpd+sTl480Y+hr5x62zlKlJCmLHz1H1glEpBIRmJPTfq8Wox6SQO7DWN7attF0/BjxSwC+j13hWAIvBhLqBN33+RghfFZ3dd0icvux+RKmFRUN+1orXOKU25gHbp+0WIkJmJdGVyHL+ujUh2AEJyzXvFA9VE26iNbgPabE4QvLmJUD4krGYee49DGFipRSai2j/ACMOibm5cr9bmKTa2hNWev8ABv8AIuGmJHf/APSW2gUpKm2YOHrQ+5i+X/kLAqU2dYH6igt9fhHj2HlZC5Lg2q19SDE14VzR3+B6PG3/ACJIj64nv2BxcqcgLlLStJsQX/oxcqRHzxKmLll0lQbajVs49I3cH2sxaWAnLADKGZTgtcHMC4jRfJ9oh4vR7GvDwNMw0ee4f/IeKzMoIOvhBHukxsYH/IKT/qyr2KP/ABV9YtfIgyXjkdEvDxWJbGMLE/5Aw4HhWlWgUA2uoPlFkrtthFAcxB1GU/CNPth7J4P0dHP4zKlIzTlBA66sLDeMjh/aeRiFTVAkIkZZveLFGQXDDd7COB7U4k4meVg8gACAS1Bct1P7QDLlrShSQSy2dINFNUO145MqjkfZtjbh4PasBjPxspMxKVIlqzAZuUqDsS4tTNGjImMD3LAGrliSXJAYVsXroYwv8b4mWrBS5RLTE5gUvXxEgttUR1+F4WlKs+pHzZ3GvrHBJNS0dKejGw3DwohZFWs3hNXvfT3gtOGA6m9Go/X+4K4xxPD4ZOafNRL2zVJ8kip9IH4JxvB4nlw81CiH5ahVGc5TVqisT9ZXIrmYR7jV2FB7axH8J0jaVKFYEmKfw+/zpC+r2PkZwlANmYAxyvb/AI/Lw0nK85BmIV/1ZaUqykMyTmtmdgfPaOxm4Ys6gTTzOpIAjxPt1i+8xHfypU2WlLJWZie4VmRQEKWAVpIblIuLVEXDGr6JlI4PDJSpXMQkE+I0qTR9GH2YLx6ZeZs6Wc1lBJFQWIINrcpqxNobDTVZmloSaEAKAXcOoFwxsdIniMQVTcy5aSwUyApAAI3IBcD9Ny16x1+TIL4Zwla0S1hTsCpKQkKUwJdWRCVZgCT4iCW0pHa9keHL7zvtCST3clKFBikZlME5CHopBckWqY4bgPCZmImJRJBQsp8XeJRmp+XOUhSiM3KCKC4j1Hsl2Ynju5hxKkLzOk94JslRASmqAlLEgs2YgkaUMZTKib0jgWWb3nfTVhuVKpiyA7uaqZQY0cGDvwxJgnhEnHFZGJlSEywVAKQpRWr9PJZIZ3qf3jZVhDHBLE/JspI5/wDBj7IhRtnBdIUT9ZVnzTKUC7kENY3/AOJ+MVTcOKlLjzIIPppAUoB29/2gqRNL+F9DHqNUcosNi8igR4g3384lIxLEMBvr8KxDHOkk2dqefzgaUkEO9t7GCkwOhE6VMLqcU5mi/DyJdSlVK3ofQbRzhGlRpax2gjBTlI31Pn9BaJcHWmCZrYqahPhyqLuXq8VIwfKFoUEFVxX0bX+4pRKSt2JHRxpsYuw2EmZSzn39zSFQA8/MK94C/t7RUMEq6Fvc6j4RooUDyKmIbXNe2+hitpVlDIQXBSTUU9DqfTyEUrAx1ZknV/WCU4ggOL+ld7/tGuruVpqXtUgAjow/npE5XCJd3cahg3vfaC0K6MYEEsadXt6fd4OMgJrlSsNRRUx+EGng0sEcy2LUAHxP1i1HDJZHhWB0U5PoPXSC0S2Z3DpQmTEIKVMogMkBd/Ow19I6Li3ZHLWUtKS3hUqhZ/UH3FNIEkcMQgjuzMSqlXv1ctXyaIzeBBSiozVFRN3cv1Jfz9YuM4pU0S+9GRPw81LkpoLlKwQPMgsYGk8RU4AGZ2Ao9o6KXwRCahYL3o4N6El2N4IyIHLkoogcqabeK+9YlyT6Q0/YFhJM1bNLnE3pKUW8m1jreHYziklIAmTUJIoJqajZgtyPhGBwHjszDzO6nhM2WFZT3gImAHwkLHNqCxzUtHpMpKicokoSk6icpX/xKKxtixQn2d0ceDE08rdM874z2dnTFd6qeZkw+LM53bm/bSMOVg5sqY6ZplrBoQ6SNaNf949IVPSQcjEBSh5sWCh0LRh8XQhYqA+ha0XkhFL+1nfn/pcJQ54tP0yzB/5GxKFp/ETErlszJRkJqOZwTWli1zHZ8M7YIn5lypJyJI5lLlJFAlySpQsPP6eZcE4GufMZaUplv4gKqb9IqPWOnxnC5MtfdSgQkNmcu5HS1HaMsWDntnz+TO8evJ1v/rHDlyAteW4ljMRUW3H0jgP8g9oZOOAljDpLDlmrUZcyUaflKCCkkCj22Ma/DMNLRPlryiigFHVjRQ9iYn247MgpUuVWYirfrTqGsT90eKyfHUdxJx/Jc+zy78IsOmWyEEDMSEZjl6pdjUhx6wInhpSXuWUC5pUMAMrFy5F9fONWTNS/5SN8xB6lnbo3lEV41DVf9m9fpGOzbkyWHwWHUhImKmIKEJGXMVBSmGchwO7BKf8Adf27bst20VhZaJCpstUpKhlM2UsKQh/A6CxpYgehjhR3StSDuKe9YhNwq9FJUNH9Xf4RDTZfI+lOHcZw05GeVOQtOpzAEf8AuBYp9YqxnH8HK/1MTJT0MxL/APaC5j5mmd7Lfa1C9Dp5Q8vEpUKjKd4fEOR9Ant/w7/+gf8Aav8A8YUeCCWrf/4Q8TxHyZnLwNHCgN6hqWtZ29zAstTEc1Lfbxr4bMFJBIL0egufb3/iJYzDoJ8ISc1VFNbfqGmrWi1L2JmfnKnBNRp9NIpGFKi+mt9INXhFABOejk3YU21tBMjDJVqpayXUEh9zQD3hp+hNmXPBFTRyXDn3ZrfSLZAA3P8AP2Y2JuZPKoFLaEFJ9RpaB55ZigghnPw/mBsSYsHNUkjk5KuWrXUHf10jRM8kUWQz0fp1+ukZ8gZwCUmlgWsBWhuIKwwCVEliTckW2Yi30iOVDasknicogpXLCtCphU70FNYimQiaCXKQN/C+1dawUrDyiKrAJIqHuWDl6vT5RWjDJy92FgCilUoWLXe7HTaDkhKIFMk5A5CDUB013vrF0viZHi1t79f2i+Vw2rS1gmjh9HqDrv7wVM4K5citWAegOnpBaBoBGLSpQpXoCG60LGJFSkjwu2pJL7NEJuEyrZ6kUctcb+sTkT8qXzlJ30azUgoCpUxYVRBB3Ym1XLmLZfECzLUfPQPSr1vFsvHLVVC827ivmIpQvOTmHVj0+Xl1iR0TGHKTmSosWJKQctrn5QLiMZMSprHcOP4UYlMnrT4WOzEhvTzhJnqUGmIe9xX3e0Wv0SBYvELJSu+UAHcsaH0jseAdoFnDd2FFU1P/AEUaKLvlWX1CRfdo5Ra0LDIGXVmDe7RFQDj8qqNW5AtGsJuJoslyTnujtOHYsy05VApUHCgQxFbEGx84ljJ6VhwOYXA+fl5+4jkRxJWpqTUn+YdOJWoOCroRRxs1IHPVHsz/AKtCqStmrg+0kzDLIRkUCXyrAv50IpsYIl8YXUqBLkmldybRzWIQo1UHPr8tIknDzEhRTahLOW2qKXhwnJf9TxPktZpW1R0o48K1jZxHaxORJzAKFCFGh0v8N/hHnSZ6ybPrZzTz0iExSyaADSwGlRSKlmbOeOBRDpypIWVgqynMohBFz1swNfWASsLckE7O3zZ9rRDIsmhfqCB84kJS/L08tdYylKzdRorKQNPifnFsmeUeFRD3ao9YglExwq3r8QIXcG5oX3FfQxOijSRj3NUIPkGPvpCUiSqtB6xnjCqH5m2DtDqQpPiHTX7aAmgz/wDGo0UW0qPrDQB3yNoUGxjoxSqZgCHoTYGNBE7NpSjXrZ4x5eKSWCkhTAsHIewFekEoxTBIKa1bKdw3pEuJRpTygjwBGUeJJLmwq5IvWlqwKiZLJIDgAuCkBy+5Z2pEHDOGUXZi+UONHGn7aw/cOQSAGBbKRloaP8/SBsSRqzpzZSmYC1C9NB6xlLPMaO5q21atYGLMRPIPKhzmJp11O9KQR+ISUMojLQpFik3UA3kf4iYxXbG2DKn1oMpdyA1m33bSKJs8C7kAuSDd7A/ekD4/M7kv9sB1pCmodDgB3Ds7VNPvpFcaYr0XfjFGiSBUb+sXTZpdiaEUu51f3BHpAsoW6qrprE8Sza0JI6P1EHFWFmlg+IrQpOWgIcizkeWlYNGPmqJYtY1oOrvpHOSJjDqNPvX6ROXjsqcrkOKHXXSDiJnRHnTlWHUC+YMLWYnz12ilODdP5Sbsqjef3rGVnpUmwIqToL/GJSMUoO9Ba7/b/vBTANlcJmJVy26X+utxF3fX7xRfxag6sT/EBYXiJBNzQ0elG2rZ4PkcTlqoTUirhz6kwnfkQKMIsurvEqDON/5LRTPwMxVddzany9o0CohQUg0oQNmsfW0WYnGzlkhswUSSWBIPmQ9rxoqfRDbRmTuHqSE0Nf0ghtioEMxoXG8EYbCFSSqmVmrfqW3t7xDEccoygSUmjWAAYsNLCEnHJVlUoMXcg2NwPT6w26HxbJKwSSHMwkGlztoAxbzhkS0JsSSHpZ96G8GoxkosSHUaABhpQDfTTSIqxcpdgyqioYdQTEt2hJNAE7EgkjKfv7+cRw0vM45muWpavkS3zg6arVSSk08Nb38rxA1qh23f0trEfo0ElLKysXULsPSvvFKcCLKBDHWCZitHqKHSulfaKjhFTWZStWd219tIQA+IwSKsSN/npAs0KS1aHUfdo0JMqZLPMH01am9IkrEyy4UhlPUVAtRt/OKTBmJOSyuYqcsXo1YsFBVyC2V38o11YqSwCkJoa9PInq8SCpCgAkMermp9/eKsVmT+HJHK7Fti3S/WEFqADvTro1PvpGliJJS4ScwrbQ73cRTKmAmzkXzUv5Q7FbAjOWKZj8IUGqmDcfH6QoV/gdGPMlhKVAAXubw+ZhLtdn1uIUKBFMhip5duv0+sRTMOU+Q+QhQoqgNRSmlylkAlQq76dH6RHCJal6vWrVH1hQohCfQPMmlVDZ0/EwigBOYXKgH8wYUKB9jFIDhzd/r9IqXdtPpDwookpnq5c2rwpAzEPqR6eUKFFAHS5QEsrDg5mpaidoaVNICTQu9wD611pDwoGhDrl1VcUUulGIBs0CSlMR5A/ECFChIDYQSC4Ncre4rFc6aQc2pP8QoUZ+aK8A+OLJS2oH7wHIWcpLlx++b6QoUaLoCaZhJbf7+/ONCULEFqH4Zt4UKFLoF2Ed6VJKVVDn4O3ygTCTSCG/M4PpChRONIJGxh5xzKDBgNtgTU3NYpx05QZiRf4f1ChQmSgBONmKNVHzfyEFYeZnyBQBGvXzhQoGqKJ4jhktJcDV6mIIlgKcagU0oaQoUSm2g8jSwwSRevw/uL51nYODfzh4UKymgUjr8oUKFBZNH/2Q==',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection,
      ],
    );
  }

  Widget get titleSection {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }

  Widget get buttonSection {
    Color color = Colors.blue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget get textSection {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the lake, '
        'which warms to 20 degrees Celsius in the summer. Activities enjoyed '
        'here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }
}
